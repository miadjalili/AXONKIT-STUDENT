//
//  AnnouncementsTableViewCell.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 4/28/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class AnnouncementsTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
        mainView.layer.borderWidth = 1.0
        mainView.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
