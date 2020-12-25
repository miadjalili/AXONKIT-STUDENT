//
//  SignupFinalViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/24/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class SignupFinalViewController: UIViewController {

    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var surNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordReText: UITextField!
    
    
    
    @IBOutlet weak var nextBTn: UIButton!
    
    @IBAction func nextBTnAct(_ sender: UIButton) {
        
        
        
        
        
        
        
        
        
        
        let contorolerConfirmCode = self.storyboard?.instantiateViewController(withIdentifier: "confirmathionVC")as! ConfirmathionCodeViewController
            
        self.navigationController?.pushViewController(contorolerConfirmCode, animated: true)
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameText.frame = CGRect(x: fullNameText.frame.origin.x, y: fullNameText.frame.origin.y, width: fullNameText.frame.size.width, height: 50)
        surNameText.frame = CGRect(x: surNameText.frame.origin.x, y: surNameText.frame.origin.y, width: surNameText.frame.size.width, height: 50)
        passwordText.frame = CGRect(x: passwordText.frame.origin.x, y: passwordText.frame.origin.y, width: passwordText.frame.size.width, height: 50)
        passwordReText.frame = CGRect(x: passwordReText.frame.origin.x, y: passwordReText.frame.origin.y, width: passwordReText.frame.size.width, height: 50)
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
