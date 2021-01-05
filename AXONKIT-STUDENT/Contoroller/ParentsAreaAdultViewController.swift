//
//  ParentsAreaAdultViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/2/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class ParentsAreaAdultViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let name = ["Ali","Amir","Asghar"]
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
extension ParentsAreaAdultViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParentsAreaAdultCell", for: indexPath) as! ParentsAreaAdultvTableViewCell
        
        cell.nameChildren.text = name[indexPath.row]
        return  cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "childrenDetailsVC") as! childrenDetailsViewController
        newViewController.name = name[indexPath.row]
               self.navigationController?.pushViewController(newViewController, animated: true)
        
        
        
        
    }
}
