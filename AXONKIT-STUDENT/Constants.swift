//
//  Constants.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/8/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

let server = "http://192.168.1.112:8088" // This is local PassWord
struct k {
    
    // local adress adresses
    struct ApiLogin {
        
        static let mainApi = "\(server)/auth/login"
        static let SignUp =  "\(server)/auth/signup"
        static let ConfirmationCode = "\(server)/auth/confirmationcode"
        static let ChangePassword = "\(server)/auth/change-password"
        static let ForgetPasswordCode = "\(server)/auth/forget-password-code"
        static let RecaveryPasswordConfirmcode = "\(server)/auth/recavery-password-confirmcode"
        static let  RecovertPassword = "\(server)/auth/recovert-password"
        static let Resendconfirmation = "\(server)/auth/resendconfirmation"
    }
}



    let server2 = "http://192.168.1.111:8089"
    struct chatapp {
        
        struct cheakClass {
            static let cheakClass = "\(server2)/chatapp/checkclass"
        }
    
    }
    
    
    
    

