//
//  CrayonTableViewCell.swift
//  Crayon
//
//  Created by Khurram Shahzad on 15/04/2020.
//  Copyright © 2020 Khurram Shahzad. All rights reserved.
//

import UIKit

class CrayonTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var crayonColorView: UIView!
    @IBOutlet weak var crayonNameLbl: UILabel!
    @IBOutlet weak var crayonImageView: UIImageView!
    @IBOutlet weak var cellContentView: UIView!
    
    // MARK: - CellLifeCycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
