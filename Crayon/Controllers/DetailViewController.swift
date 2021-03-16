//
//  DetailViewController.swift
//  Crayon
//
//  Created by Khurram Shahzad on 15/04/2020.
//  Copyright © 2020 Khurram Shahzad. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var upperLikeBtnBGView: UIView!
    @IBOutlet weak var lowerLikeBtnBGView: UIView!
    
    @IBOutlet weak var upperLikeBtn: UIButton!
    @IBOutlet weak var lowerLikeBtn: UIButton!
    
    @IBOutlet weak var crayonImageView: UIImageView!
    @IBOutlet weak var crayonNameLbl: UILabel!
    @IBOutlet weak var crayonColorView: UIView!
    @IBOutlet weak var crayonColorDetailLbl: UILabel!
    
    @IBOutlet weak var contentView: UIView!
    
    
    // MARK: - iVars
    
    var selectedCrayon: Crayon?
    var selectedIndexPath: IndexPath?
    
    // MARK: - ViewLifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - Helper Methods
    
    private func setupUI() {
        
        self.setupContent()
        self.setupButtons()
        self.handleContentViewForWhite()
    }
    
    private func setupContent() {
        if let crayon = self.selectedCrayon {
            self.view.backgroundColor = crayon.color
            
            self.upperLikeBtnBGView.backgroundColor = crayon.color
            self.lowerLikeBtnBGView.backgroundColor = crayon.color
            self.crayonImageView.image = crayon.image
            self.crayonNameLbl.text = crayon.name
            self.crayonColorView.backgroundColor = crayon.color
            let rGBArr: [CGFloat] = crayon.color.cgColor.components ?? [CGFloat(0.0)]
            var colorStr = ""

            if rGBArr.count > 2 {
                colorStr += "(R: \(String(format: "%.3f", Float(rGBArr[0]))), G: \(String(format: "%.3f", Float(rGBArr[1]))), B: \(String(format: "%.3f", Float(rGBArr[2]))))\n"
                colorStr += "(R: \(Int(rGBArr[0] * 255)), G: \(Int(rGBArr[1] * 255)), B: \(Int(rGBArr[2] * 255)))\n"
                colorStr += "Hex: " + crayon.color.toHexString().uppercased()
            }
            self.crayonColorDetailLbl.text = colorStr
        }
    }
    
    private func setupButtons() {
        if let crayon = self.selectedCrayon {
            if crayon.isLiked {
                self.upperLikeBtn.setTitle("\u{2764}", for: .normal)
                self.lowerLikeBtn.setTitle("\u{2764}", for: .normal)
            } else {
                self.upperLikeBtn.setTitle("\u{1f914}", for: .normal)
                self.lowerLikeBtn.setTitle("\u{1f914}", for: .normal)
            }
        }
    }
    
    private func handleContentViewForWhite() {
        if let crayon = self.selectedCrayon {
            if crayon.color.toHexString() == "fefefe" {
                self.contentView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
            } else {
                self.contentView.backgroundColor = UIColor.white
            }
        }
    }
    
    // MARK: - IBActions
    
    @IBAction func likeBtnDidTapped(_ sender: UIButton) {
        if let indexPath = self.selectedIndexPath {
            self.selectedCrayon?.isLiked = !(self.selectedCrayon?.isLiked ?? false)
            CrayonHelper.shared.crayonFor(indexPath: indexPath).isLiked = self.selectedCrayon?.isLiked ?? false
            self.setupButtons()
        }
    }
}
