//
//  SideMenuTableViewCell.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/1/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var IconImage: UIImageView!
    
    @IBOutlet weak var TitleLable: UILabel!
    
    @IBOutlet weak var viewNotifi: UIView!
    
    @IBOutlet weak var countNotfi: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewNotifi.layer.borderWidth = 0.0
        viewNotifi.layer.cornerRadius = 0.5 * viewNotifi.bounds.width 
        viewNotifi.layer.shadowColor = UIColor(named: "buttonShadow")?.cgColor
        viewNotifi.layer.shadowOpacity = 0
        viewNotifi.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNotifi.layer.borderColor = UIColor(named: "buttonBorder")?.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
