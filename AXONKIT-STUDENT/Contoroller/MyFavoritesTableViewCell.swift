//
//  MyFavoritesTableViewCell.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/2/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class MyFavoritesTableViewCell: UITableViewCell {

    @IBOutlet weak var favoritesImages: UIImageView!
    
    @IBOutlet weak var titlelabel: UILabel!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
