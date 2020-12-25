//
//  CalenderTableViewCell.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/8/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

protocol presentalertCell:AnyObject {
    func alertCell()
    
    
    
}


class CalenderTableViewCell: UITableViewCell {
  weak var delegate : presentalertCell?
    
    
    @IBOutlet weak var moreBTn: UIButton!
    
    
    @IBAction func moreBTnAc(_ sender: UIButton) {
        delegate?.alertCell()
        print("btncell")
    }
    
    
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
