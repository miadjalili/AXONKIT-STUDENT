//
//  ReviewExamViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/26/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class ReviewExamViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "ReviewExam"
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
extension ReviewExamViewController: UITableViewDataSource,UITableViewDelegate{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =  tableView.dequeueReusableCell(withIdentifier: "ReviewExamtCell", for: indexPath) as! ReviewExamTableViewCell
    
    
    return cell
}
    
//func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           tableView.deselectRow(at: indexPath, animated: true)
//
//
//           let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "AnswerSheetDetailsVC") as! AnswerSheetDetailsViewController
//
//           self.navigationController?.pushViewController(newViewController, animated: true)
//              }
}
