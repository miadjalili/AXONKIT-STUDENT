//
//  requestAlamofire.swift
//  Timnak
//
//  Created by miadjalili on 11/15/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import Foundation
import Alamofire

protocol presentalertApi:AnyObject {
    func alert()
}

class request{
    
    weak var delegate :presentalertApi?
    
    func updateApi (apiUrl : String ,parameters: [String: String],  ComplishiomHandelar : @escaping (ModelLogin) ->() ){
        let request = AF.request(apiUrl, method: .post, parameters: parameters,encoding: JSONEncoding.default)
            .responseDecodable(of: ModelLogin.self)
            {
                (response) in
              // if response.response?.statusCode == 201{
                    print(response.response?.statusCode)
                print(response.result)
                    switch response.result {
                        
                    case .success(let data):
                        ComplishiomHandelar (
                            data
                        )
                    //print(data)
                    case .failure(let err):
                        print(err)
                    }
             //  }
                if response.response?.statusCode == 400{
            print("user no found")
                    self.delegate?.alert()
                }
                guard let requsetapi = response.value else {return}
                // print(requsetapi)
                //         ComplishiomHandelar (
                //            requsetapi
                //
                //               )
                
        }
                }
                
        
          
//          let request = AF.request(apiUrl , method: .get)
//              .validate()
//          request.responseDecodable(of : [Modellessonname].self) { (response) in
//           print(response)
//              guard let requsetapi = response.value else {return}
//
//              ComplishiomHandelar (
//
//                 requsetapi
//              )
//          }
//
//      }
    
// . post
    
    func SignUpApi (apiUrl : String ,parameters: [String: Any ],  ComplishiomHandelar : @escaping (ModelSignUp) ->() ){
  let request = AF.request(apiUrl, method: .post, parameters: parameters,encoding: JSONEncoding.default)
    .responseDecodable(of: ModelSignUp.self)
    {
        (response) in
        
    }
    
    }
    
    
    
    
    func CheakClass (apiUrl : String , ComplishiomHandelar : @escaping (ModelCheckClass) ->() ){
          
        let request = AF.request(apiUrl , method: .post,parameters: nil,encoding: JSONEncoding.default)
          request.responseDecodable(of : ModelCheckClass.self) { (response) in
           print("CheakClass  \(response)")
            switch response.result {
                
            case .success(let data):
                guard let requsetapi = response.value else {return}
                ComplishiomHandelar (

                    data
                )
            //print(data)
            case .failure(let err):
                print(err)
            }
        
             

             
          }

      }
    
    
    
    
    
    
}

