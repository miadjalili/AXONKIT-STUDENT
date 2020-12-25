//
//  PasswordViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/26/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    
    @IBOutlet weak var firstPass: UITextField!
    
    
    @IBOutlet weak var secPass: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Security"
        //navigationItem.hidesBackButton = true
        
         firstPass.frame = CGRect(x: firstPass.frame.origin.x, y: firstPass.frame.origin.y, width: firstPass.frame.size.width, height: 50)
         secPass.frame = CGRect(x: secPass.frame.origin.x, y: secPass.frame.origin.y, width: secPass.frame.size.width, height: 50)
        
        
        
        
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
