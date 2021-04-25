//
//  ViewControllerExtension.swift
//  sideMenu
//
//  Created by Sajjad Sarkoobi on 12/26/20.
//

import Foundation
import UIKit


extension UIViewController {
    
    func addSideMenu(){
       // let leftBarItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(showSideMenu))
        let image = UIImage(systemName: "line.horizontal.3")
        
        
        let leftBarItem = UIBarButtonItem(image: image, landscapeImagePhone: nil, style: .done, target: self, action: #selector(showSideMenu))
        leftBarItem.tintColor = .white
        self.navigationItem.setLeftBarButton(leftBarItem, animated: false)

    }
    
    @objc func showSideMenu(){
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "SideMenuContainer") as? SideMenuContainer else {
            return
        }
        controller.modalPresentationStyle = .overFullScreen
        controller.sender = self
        self.present(controller, animated: false, completion: nil)
    }
}
