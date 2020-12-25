//
//  ViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/23/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit
import AVFoundation
import Network

class ViewController: UIViewController {

    var iconClick = true
    var url = request()//only for test api
    //only for test api
    let monitor = NWPathMonitor()

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var selectLanguageBtn: UIButton!
    @IBOutlet weak var logInBTn: UIButton!
    @IBOutlet weak var showPassBT: UIButton!
    @IBOutlet weak var firstCheckIm: UIImageView!
    @IBOutlet weak var secoCheakIm: UIImageView!
    
    
    @IBAction func showPassBTn(_ sender: UIButton) {
        if(iconClick == true) {
            passwordTextFiled.isSecureTextEntry = false
            let imageOff = UIImage(systemName: "eye.slash") as UIImage?
            sender.setImage(imageOff, for: .normal)
        } else {
            passwordTextFiled.isSecureTextEntry = true
            let imageOff = UIImage(systemName: "eye") as UIImage?
            sender.setImage(imageOff, for: .normal)
        }
        
        iconClick = !iconClick
    }
        
        
        
    // This is Login BTn
    @IBAction func logInBTnAct(_ sender: UIButton) {
        var  parameters : [String: String] = ["Username": "\(userNameTextField.text!)" ,
            "Password":"\(passwordTextFiled.text!)"]
        
        if userNameTextField.text?.isEmpty == true {
            userNameTextField.layer.cornerRadius = 5
            userNameTextField.layer.borderWidth = 1
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            
        }
        if userNameTextField.text!.count <= 4 {
            userNameTextField.layer.cornerRadius = 5
            userNameTextField.layer.borderWidth = 1
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            
        }
        
        if passwordTextFiled.text?.isEmpty == true {
            passwordTextFiled.layer.cornerRadius = 5
            passwordTextFiled.layer.borderWidth = 1.5
            passwordTextFiled.layer.borderColor = UIColor.red.cgColor
            
        }
        if passwordTextFiled.text!.count <= 4  {
            passwordTextFiled.layer.cornerRadius = 5
            passwordTextFiled.layer.borderWidth = 1.5
            passwordTextFiled.layer.borderColor = UIColor.red.cgColor
            
        }
     
        if passwordTextFiled.text!.count >= 5 && userNameTextField.text!.count >= 5 && userNameTextField.text?.isEmpty == false && passwordTextFiled.text?.isEmpty == false{
           let appDelegate = UIApplication.shared.delegate! as! AppDelegate
           let tabbar = self.storyboard!.instantiateViewController(withIdentifier: "idtabBar")
           appDelegate.window?.rootViewController = tabbar
           appDelegate.window?.makeKeyAndVisible()
             self.navigationController?.pushViewController(tabbar, animated: true)
            
            
        url.updateApi(apiUrl: k.ApiLogin.mainApi, parameters: parameters) { (response) in//only for test api
            
          //  print(response.Message)
            print(response.ID)
            print(response.TokenID)
            print(response.Success)
            print()
//            if response.Success == true{
                
            // for tab bar
            
            
            
//            }
            if response.Success != true{
            print("userNotFound")
                
            }
            
        }
        }
      
        
    }
    
    
    
    // this BTn for Select Language
    @IBAction func LanBtnAct(_ sender: UIButton) {
        let contorolerlanguage = self.storyboard?.instantiateViewController(withIdentifier: "DefaultlanguageVC")as! DefaultlanguageViewController
            self.navigationController?.pushViewController(contorolerlanguage, animated: true)
        
        
        
      
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("1st\(UserHolder.shared.token)")
        
        UserHolder.shared.token = "1234drxfgxf"
        
        print("2st\(UserHolder.shared.token!)")
        
      //  print(monitor.currentPath.isExpensive)
        
        let icon = UIImage(systemName: "globe") as UIImage?
        selectLanguageBtn.setImage(icon, for: .normal)
        selectLanguageBtn.imageView?.contentMode = .scaleAspectFit
        selectLanguageBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
        
        firstCheckIm.isHidden = true
        showPassBT.isHidden = true
        secoCheakIm.isHidden = true
        
        userNameTextField.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
        passwordTextFiled.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
        logInBTn.layer.cornerRadius = 5
        userNameTextField.frame = CGRect(x: userNameTextField.frame.origin.x, y: userNameTextField.frame.origin.y, width: userNameTextField.frame.size.width, height: 50)
        passwordTextFiled.frame = CGRect(x: passwordTextFiled.frame.origin.x, y: passwordTextFiled.frame.origin.y, width: passwordTextFiled.frame.size.width, height: 50)
        
        // Do any additional setup after loading the view.
        
    }
    
    
    
    
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if textField.isEditing == true  {
            textField.layer.cornerRadius = 5
            if passwordTextFiled.isEditing == true{
                showPassBT.isHidden = false
            }
            if passwordTextFiled.isEditing == true && passwordTextFiled.text!.count >= 5
            {
                secoCheakIm.isHidden = false
                passwordTextFiled.layer.borderColor = UIColor.green.cgColor
                passwordTextFiled.layer.borderWidth = 1.5
                
            }
            if passwordTextFiled.text!.count == 0 {
                showPassBT.isHidden = true
            }
            if passwordTextFiled.text!.count <= 5 {
                
                secoCheakIm.isHidden = true
                passwordTextFiled.layer.borderColor = UIColor.clear.cgColor
                passwordTextFiled.layer.borderWidth = 1.5
            }
            
            
            if userNameTextField.isEditing == true && userNameTextField.text!.count >= 5
            {
                firstCheckIm.isHidden = false
                userNameTextField.layer.borderColor = UIColor.green.cgColor
                userNameTextField.layer.borderWidth = 1.5
                
            }
            if userNameTextField.text!.count <= 5 {
                firstCheckIm.isHidden = true
                userNameTextField.layer.borderColor = UIColor.clear.cgColor
                userNameTextField.layer.borderWidth = 1.5
            }
            
            if textField.text!.count <= 5 {
                
            }
        }
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}

extension ViewController: presentalertApi{
    
func alert() {
    let alert = UIAlertController(title: "Username Or Password Incorrect", message: "", preferredStyle: .alert)
    let action = UIAlertAction(title: "Ok", style: .default) { (action) in
        
        
    }
    alert.addAction(action)
    present(alert,animated: true,completion: nil)
}
}
