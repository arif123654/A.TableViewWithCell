//
//  TableViewCell.swift
//  A.TableViewWithCell
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK:- Utilities
    @IBOutlet weak var tableImageVIew: UIImageView!
    @IBOutlet weak var tableNameLabel: UILabel!
    @IBOutlet weak var tableQCLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
