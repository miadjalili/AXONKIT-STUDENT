//
//  ForgetPasswordViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/25/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    
    @IBAction func backToSignup(_ sender: UIButton) {
        let contorolerBackSignUp = self.storyboard?.instantiateViewController(withIdentifier: "signUpVC")as! SignupViewController
        self.navigationController?.pushViewController(contorolerBackSignUp, animated: true)
        
    }
    
    
    @IBAction func recoverBTnAct(_ sender: UIButton) {
        
        let contorolerConfirmCode = self.storyboard?.instantiateViewController(withIdentifier: "confirmathionVC")as! ConfirmathionCodeViewController
                   
               self.navigationController?.pushViewController(contorolerConfirmCode, animated: true)
        
    }
    
    
    
    @IBOutlet weak var forgetPassText: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      forgetPassText.frame = CGRect(x: forgetPassText.frame.origin.x, y: forgetPassText.frame.origin.y, width: forgetPassText.frame.size.width, height: 50)
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
