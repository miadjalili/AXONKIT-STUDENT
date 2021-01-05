//
//  ChildsEducationalDossierViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/2/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class ChildsEducationalDossierViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Child's Educational Dossier "
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
//ChildsEducationalDossierCell
extension ChildsEducationalDossierViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChildsEducationalDossierCell", for: indexPath)
        return  cell
    }
    
    
}
