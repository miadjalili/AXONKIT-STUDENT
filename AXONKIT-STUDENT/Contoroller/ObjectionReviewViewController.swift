//
//  ObjectionReviewViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/1/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class ObjectionReviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Objection Review"
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ObjectionReviewViewController: UITableViewDataSource,UITableViewDelegate{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =  tableView.dequeueReusableCell(withIdentifier: "ObjectionReviewCell", for: indexPath) as! ObjectionReviewTableViewCell
    
    
    return cell
}
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           tableView.deselectRow(at: indexPath, animated: true)
       
           
           let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "ObjectionReviewDetailsVC") as! ObjectionReviewDetailsViewController
              
           self.navigationController?.pushViewController(newViewController, animated: true)
              }
}




