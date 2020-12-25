//
//  DefaultlanguageViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/24/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit
import Localize_Swift


class DefaultlanguageViewController: UIViewController {

    @IBOutlet weak var TableViewLang: UITableView!
    
    
    
    var language = ["English","Deutsch","German","Français","Norsk","Türk","中文","فارسی","عربی"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        TableViewLang.delegate = self
        TableViewLang.dataSource = self
   
        
        
        
        
        
        // Do any additional setup after loading the view.
        print(Localize.availableLanguages())
        print(Localize.defaultLanguage())
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}

extension DefaultlanguageViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return language.count
    }

    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewLang.dequeueReusableCell(withIdentifier: "languageCell", for:indexPath) as! LanguageTableViewCell
        
        cell.langName.text = language[indexPath.row]
        
        return cell
    }
    
    
    
    
}
    
    
    
    
    

