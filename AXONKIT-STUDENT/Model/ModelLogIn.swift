//
//  ModelLogIn.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/7/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import Foundation
struct ModelLogin: Codable {
    let ID : String
    let TokenID : String
  //  let Message: String
    let Success: Bool
}

struct ModelSignUp: Codable {
    let Message : String
    let code: Int
    
}

