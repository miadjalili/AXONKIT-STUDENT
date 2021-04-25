//
//  EachCourseViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 4/21/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class EachCourseViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var secondView: UIView!
    
    
    @IBOutlet weak var thirdView: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstView.layer.borderWidth = 0.5
        secondView.layer.borderWidth = 0.5
        thirdView.layer.borderWidth = 0.5
        
        navigationItem.title = "{Course title}"
        
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
