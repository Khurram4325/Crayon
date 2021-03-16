//
//  HomeViewController.swift
//  Crayon
//
//  Created by Khurram Shahzad on 15/04/2020.
//  Copyright © 2020 Khurram Shahzad. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - IBOutets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - iVars
    
    // MARK: - ViewLifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - Helper Methods
    
    private func setupUI() {
        setupTableView()
    }
    
    private func setupTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        tableView.register(UINib(nibName: "CrayonTableViewCell", bundle: nil), forCellReuseIdentifier: "CrayonTableViewCell")
        tableView.reloadData()
    }
    
    private func moveToDetailWith(crayon: Crayon, indexPath: IndexPath) {
        if let detailVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            
            detailVC.selectedCrayon = crayon
            detailVC.selectedIndexPath = indexPath
            
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
    }

}

// MARK: - "UITableViewDataSource, UITableViewDelegate"

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: 30.0))
        headerView.backgroundColor = UIColor.black
        
        let headerLabel = UILabel()
        headerLabel.font = headerLabel.font.withSize(16)
        headerLabel.textColor = UIColor.white
        headerLabel.textAlignment = .center
        
        headerLabel.sizeToFit()
        headerView.addSubview(headerLabel)
        headerLabel.frame = CGRect(x: 0.0, y: 04.0, width: UIScreen.main.bounds.size.width, height: 22.0)
        
        headerLabel.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonTableViewCell", for: indexPath) as? CrayonTableViewCell else { fatalError("Unexpected Table View Cell") }
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        cell.crayonColorView.backgroundColor = crayon.color
        cell.crayonNameLbl.text = crayon.name
        cell.crayonImageView.image = crayon.image
        
        if crayon.color.toHexString() == "fefefe" {
            cell.cellContentView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
        } else {
            cell.cellContentView.backgroundColor = UIColor.white
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        self.moveToDetailWith(crayon: CrayonHelper.shared.crayonFor(indexPath: indexPath), indexPath: indexPath)
    }
}
