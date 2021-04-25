//
//  ListOfCourseViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 4/21/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class ListOfCourseViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.title = "List Courses"
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

extension ListOfCourseViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListOfCourseCell", for: indexPath) as! ListOfCourseTableViewCell
        cell.mainView.layer.borderWidth = 0.4
        cell.mainView.layer.cornerRadius = 5
        cell.eachCourseBTn.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
        return cell
    }
    @objc func buttonTapped ( sender: UIButton){
        let Controller = self.storyboard?.instantiateViewController(withIdentifier: "EachCourseVC") as! EachCourseViewController
           
            self.navigationController?.pushViewController(Controller, animated: true)
    }
    
    
    
    
    
    
}
