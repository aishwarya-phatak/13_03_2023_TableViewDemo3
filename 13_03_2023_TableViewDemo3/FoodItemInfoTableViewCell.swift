//
//  FoodItemInfoTableViewCell.swift
//  13_03_2023_TableViewDemo3
//
//  Created by Vishal Jagtap on 10/04/23.
//

import UIKit

class FoodItemInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var foodItemTitleLabel: UILabel!
    @IBOutlet weak var foodItemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
