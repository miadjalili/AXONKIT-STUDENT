//
//  Educational dossier Educational dossier Educational dossier Educational dossier Educational dossier EducationalDossierViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/15/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class EducationalDossierViewController: UIViewController {

    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var gpaView: UIView!
    @IBOutlet weak var courseView: UIView!
    @IBOutlet weak var schoolView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var requestCopyBTn: UIButton!
    
    @IBAction func requestCopyBTnAction(_ sender: UIButton) {
       

       


        
        
        let alert = UIAlertController(title: "Confirmation!", message: " You can find a copy of your dossier in your mailbox.\n  may take 24 hours to collect this data . ", preferredStyle: .alert)
              let action = UIAlertAction(title: "Ok", style: .default) { (action) in
               
               }
               alert.addAction(action)
                             present(alert,animated: true,completion: nil)
        
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Educational dossier"
        schoolView.layer.borderWidth = 0.3
        dateView.layer.borderWidth = 0.3
        gpaView.layer.borderWidth = 0.3
        courseView.layer.borderWidth = 0.3
        
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

extension EducationalDossierViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "EducationalDossierCell", for: indexPath) as! EducationalDossierTableViewCell
        
        
        return cell
    }
    
    
    
    
    
    
}
