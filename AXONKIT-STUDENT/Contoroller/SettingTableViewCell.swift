//
//  SettingTableViewCell.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/3/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var nameList: UILabel!
    
    @IBOutlet weak var imageList: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
