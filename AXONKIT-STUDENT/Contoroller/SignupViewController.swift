//
//  SigninViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/24/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit
import FlagPhoneNumber

class SignupViewController: UIViewController {

    @IBOutlet weak var signupTextFiled: UITextField!
    
    
   
    
    
    
    @IBAction func backToLoginBTn(_ sender: UIButton) {
        
        let contorolerBackLogin = self.storyboard?.instantiateViewController(withIdentifier: "LoginVc")as! ViewController
                       
                   self.navigationController?.pushViewController(contorolerBackLogin, animated: true)
    }
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
    
        
        
        switch segmentedControl.selectedSegmentIndex {
            
        case 0:
            do
            { signupTextFiled.placeholder = "Phone"
                signupTextFiled.text? = ""
            signupTextFiled.keyboardType = .phonePad
                
                signupTextFiled.reloadInputViews()
            }
               

//            if(user is prompted for alphanumeric input)
//                [textField setKeyboardType:UIKeyboardTypeDefault];
       
        case 1:
            do
            {signupTextFiled.placeholder = "Email"
                signupTextFiled.text? = ""
                signupTextFiled.keyboardType = .default
                signupTextFiled.reloadInputViews()
            }
            
            
            default: break;
            }
    }
    
    @IBAction func nextBtnAct(_ sender: UIButton) {
        var  parameters : [String: Any] = [:]
       
//       parameters["Password"] = "2Password"
//       parameters["FirstName"] = "2Password"
//       parameters["SureName"] = "2Password"
        
        
        if signupTextFiled.text?.isEmpty == true {
            signupTextFiled.layer.borderWidth = 1
            signupTextFiled.layer.borderColor = UIColor.red.cgColor
            
            
            
        }else{
            
            if segmentedControl.selectedSegmentIndex == 0 {
                
                parameters["Email"] = ""
                parameters["Phonenumber"] = "\(signupTextFiled.text!)"
                print(parameters)

            }
            if segmentedControl.selectedSegmentIndex == 1 {
                parameters["Email"] = "\(signupTextFiled.text!)"
                parameters["Phonenumber"] = ""
                
                print(parameters)
                
            }
            
            
            
            
            
            let contorolerlanguage = self.storyboard?.instantiateViewController(withIdentifier: "SignupFinalVC")as! SignupFinalViewController

                           
                           
                       self.navigationController?.pushViewController(contorolerlanguage, animated: true)
            
            
        }
        
        
        
        
        
        
    }
    
    


    // You can change the chosen flag then set the phone number
   

    // Or directly set the phone number with country code, which will update automatically the flag image

    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupTextFiled.placeholder = "Phone"
        signupTextFiled.keyboardType = .phonePad
        segmentedControl.frame = CGRect(x: segmentedControl.frame.origin.x, y: segmentedControl.frame.origin.y, width: segmentedControl.frame.size.width, height: 40)
        
          signupTextFiled.frame = CGRect(x: signupTextFiled.frame.origin.x, y: signupTextFiled.frame.origin.y, width: signupTextFiled.frame.size.width, height: 50)
         signupTextFiled.addTarget(self, action: #selector(SignupViewController.textFieldDidChange(_:)), for: .editingChanged)
        
        
        
        // Do any additional setup after loading the view.
    }
    @objc func textFieldDidChange(_ textField: UITextField) {
        if textField.isEditing == true  {
         
          signupTextFiled.layer.borderColor = UIColor.clear.cgColor
            
           
        }
        
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
