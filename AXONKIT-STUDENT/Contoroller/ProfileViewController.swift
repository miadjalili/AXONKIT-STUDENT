//
//  ProfileViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/12/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var sureName: UITextField!
    @IBOutlet weak var natinalTextField: UITextField!
    @IBOutlet weak var dataofBirthTextFiled: UITextField!
    @IBOutlet weak var EmailTextFiled: UITextField!
    @IBOutlet weak var phoneTextFiled: UITextField!
    @IBOutlet weak var landLineTextFiled: UITextField!
    @IBOutlet weak var emergencyTextField: UITextField!
    @IBOutlet weak var zipCodeTextFiled: UITextField!
    @IBOutlet weak var bankTextFiled: UITextField!
    @IBOutlet weak var cheakMarkBTn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.title = "Profile"
        cheakMarkBTn.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
       heightTextFiled(nameYourTextFiled: firstNameTextField, height: 40)
       heightTextFiled(nameYourTextFiled: sureName, height: 40)
       heightTextFiled(nameYourTextFiled: natinalTextField, height: 40)
        heightTextFiled(nameYourTextFiled: dataofBirthTextFiled, height: 40)
        heightTextFiled(nameYourTextFiled: EmailTextFiled, height: 40)
        heightTextFiled(nameYourTextFiled: phoneTextFiled, height: 40)
        heightTextFiled(nameYourTextFiled: landLineTextFiled, height: 40)
        heightTextFiled(nameYourTextFiled: emergencyTextField, height: 40)
        heightTextFiled(nameYourTextFiled: zipCodeTextFiled, height: 40)
         heightTextFiled(nameYourTextFiled: bankTextFiled, height: 40)
        
        // Do any additional setup after loading the view.
    }
    @objc func buttonTapped ( sender: UIButton){
        if sender.isSelected {
            let cheakmarkOff = UIImage(systemName: "square")
            sender.setImage(cheakmarkOff, for: .normal)
            
            sender.isSelected = false
            
        } else {
            let cheakmarkOn = UIImage(systemName: "checkmark.square")
            sender.setImage(cheakmarkOn, for: .normal)
            sender.isSelected = true
        }
        
    }
    
    
    
    
    
    
    func heightTextFiled (nameYourTextFiled:UITextField,height:CGFloat){
        
       nameYourTextFiled.frame = CGRect(x: nameYourTextFiled.frame.origin.x, y: nameYourTextFiled.frame.origin.y, width: nameYourTextFiled.frame.size.width, height: height)
        
        
        
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
