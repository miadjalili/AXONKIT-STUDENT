//
//  OffLineCourseViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/13/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class OffLineCourseViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
         tableView.dataSource = self
     navigationItem.title = "My Off-line Course"
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
extension OffLineCourseViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "OffLineCell", for: indexPath) as! OffLineCourseTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    
        
        let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "ManagerOffLineCourseVc") as! ManagerOffLineCourseViewController
           
        self.navigationController?.pushViewController(newViewController, animated: true)
           }
    
    
    
    
    
}
