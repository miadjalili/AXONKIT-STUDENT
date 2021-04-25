//
//  ListOfCourseTableViewCell.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 4/21/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class ListOfCourseTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var eachCourseBTn: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
