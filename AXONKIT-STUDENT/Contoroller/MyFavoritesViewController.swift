//
//  MyFavoritesViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 1/2/21.
//  Copyright © 2021 MIAD. All rights reserved.
//

import UIKit

class MyFavoritesViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    let favoritesItems = ["arch","art","edu","engineering","environ","hospitality","IT","mangm","med","mixed","natural_science","society"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MyFavorites"
        
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



extension MyFavoritesViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFavoritesCell", for: indexPath) as! MyFavoritesTableViewCell
        
        cell.favoritesImages.image = UIImage(named: favoritesItems[indexPath.row])
        cell.titlelabel.text = favoritesItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return 222

    }
    
    
    
    
}
