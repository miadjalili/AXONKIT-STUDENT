//
//  ManagerOffLineCourseViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/13/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class ManagerOffLineCourseViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
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


extension ManagerOffLineCourseViewController : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "ManagerOffLineCourse", for: indexPath) as! ManagerOffLineCourseTableViewCell
        cell.titleCell.text = "session \(indexPath.row + 1)"
        
        
               return cell
    }
    
    
    
    
    
    
    
    
    
    
    
}
