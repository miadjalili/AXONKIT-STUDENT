//
//  childrenDetailsViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/2/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class childrenDetailsViewController: UIViewController {
 
    
    @IBOutlet weak var childrenNameLabel: UILabel!
    var name : String?
    
    
    
    @IBAction func openMapBTnAction(_ sender: UIButton) {
       // if (UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
//                UIApplication.shared.open(URL(string:"comgooglemaps://?center=\(self.location.coordinate.latitude),\(self.location.coordinate.longitude)&zoom=14&views=traffic&q=\(self.location.coordinate.latitude),\(self.location.coordinate.longitude)")!, options: [:], completionHandler: nil)
//            } else {
//                print("Can't use comgooglemaps://")
//            }
//
        
        
        
        }
        
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        childrenNameLabel.text = name!
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
