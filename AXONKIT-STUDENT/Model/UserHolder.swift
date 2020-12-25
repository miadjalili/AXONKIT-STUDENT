//
//  UserHolder.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/25/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import Foundation

let defult =  UserDefaults.standard

//struct tokenModel {
//
//    var token : String
//
//}

//class UserHolder {
//
//
//    static var shared:UserHolder = UserHolder()
//   init() {
//
//   }
//    private func settoken(token: String){
//
//    }
//
//}

class UserHolder{
    
    static let shared = UserHolder()
    
    var token : String?
    private init(){}
    
    func requestForToken(){
        //Code Process
        token = "hvlhvhjbljbjklbkjbnknlkn;k"
        print("Location granted")
    }
    
}
