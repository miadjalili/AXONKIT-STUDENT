//
//  InviteFriendsViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/15/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class InviteFriendsViewController: UIViewController {

     var image:UILabel!
    
    
    
    @IBAction func SendInvitationBTnAction(_ sender: UIButton) {
        // text to share
               let text = "i'm inviting you to install Axon Kit here is the link: https://apps.apple.com/gb/app/hich-rate-compare-photos/id1478097420"

               // set up activity view controller
               let textToShare = [ text ]
               let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
               activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

               // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.assignToContact ]

               // present the view controller
               self.present(activityViewController, animated: true, completion: nil)
        
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         navigationItem.title = "Invite friends"
        
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
