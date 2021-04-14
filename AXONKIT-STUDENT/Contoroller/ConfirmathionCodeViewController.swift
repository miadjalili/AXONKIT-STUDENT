//
//  ConfirmathionCodeViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/25/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class ConfirmathionCodeViewController: UIViewController {
    @IBOutlet weak var confCodeTextField: UITextField!
    
    @IBAction func nextToPassBTn(_ sender: UIButton) {
        
        let contorolerPass = self.storyboard?.instantiateViewController(withIdentifier: "passVC")as! PasswordViewController
                   
               self.navigationController?.pushViewController(contorolerPass, animated: true)
        
        
    }
    
    @IBAction func backToLogin(_ sender: UIButton) {
        
        let contorolerBackLogin = self.storyboard?.instantiateViewController(withIdentifier: "LoginVc")as! LoginViewController
            
        self.navigationController?.pushViewController(contorolerBackLogin, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confCodeTextField.frame = CGRect(x: confCodeTextField.frame.origin.x, y: confCodeTextField.frame.origin.y, width: confCodeTextField.frame.size.width, height: 50)
        
        
        
        
        
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
