//
//  SideMenuViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/28/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    
    @IBOutlet weak var TableViewSideMenu: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "User name or email"
        TableViewSideMenu.isScrollEnabled = false
        TableViewSideMenu.delegate = self
        TableViewSideMenu.dataSource = self
        
        
        print(SideMenuDataManager.shared.getSideMenuData().count)
        print(SideMenuDataManager.shared.getSideMenuData()[3].icon)
        
        
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
extension SideMenuViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (SideMenuDataManager.shared.getSideMenuData().count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  TableViewSideMenu.dequeueReusableCell(withIdentifier: "sideMenuCell", for: indexPath) as! SideMenuTableViewCell
        cell.viewNotifi.isHidden = true
        cell.TitleLable.text = SideMenuDataManager.shared.getSideMenuData()[indexPath.row].title.rawValue
        cell.IconImage.image = SideMenuDataManager.shared.getSideMenuData()[indexPath.row].icon
        
        
        if indexPath.row == 5 {
                  cell.viewNotifi.isHidden = false
            cell.countNotfi.text = String(SideMenuDataManager.shared.getSideMenuData()[indexPath.row].value)
              }else if indexPath.row == 9 {
              cell.viewNotifi.isHidden = false
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
        return 61.0
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     tableView.deselectRow(at: indexPath, animated: true)
    
      
    
        if indexPath.row == 0 {
     
     let newViewController0 = self.storyboard?.instantiateViewController(withIdentifier: "profileVC") as! ProfileViewController
        
     self.navigationController?.pushViewController(newViewController0, animated: true)
        }
        if indexPath.row == 1 {
            
            let newViewController1 = self.storyboard?.instantiateViewController(withIdentifier: "OffLineCourseVC") as! OffLineCourseViewController
               
            self.navigationController?.pushViewController(newViewController1, animated: true)
               }
        
        
        if indexPath.row == 2 {
        
        let newViewController2 = self.storyboard?.instantiateViewController(withIdentifier: "DeclareAnAbsenceVC") as! DeclareAnAbsenceViewController
           
        self.navigationController?.pushViewController(newViewController2, animated: true)
           }
         if indexPath.row == 3 {
            let newViewController3 = self.storyboard?.instantiateViewController(withIdentifier: "EducationalDossierVC") as! EducationalDossierViewController
                      
                   self.navigationController?.pushViewController(newViewController3, animated: true)
            
        
        }
        
        if indexPath.row == 4 {
                   let newViewController4 = self.storyboard?.instantiateViewController(withIdentifier: "InvitefriendsVC") as! InviteFriendsViewController
                             
                          self.navigationController?.pushViewController(newViewController4, animated: true)
                   
               
               }
        
        if indexPath.row == 5 {
                          let newViewController5 = self.storyboard?.instantiateViewController(withIdentifier: "TasksVC") as! TasksViewController
                                    
                                 self.navigationController?.pushViewController(newViewController5, animated: true)
                          
                      
                      }
        
        if indexPath.row == 6 {
                                 let newViewController6 = self.storyboard?.instantiateViewController(withIdentifier: "AssignmentVC") as! AssignmentViewController
                                           
                                        self.navigationController?.pushViewController(newViewController6, animated: true)
                                 
                             
                             }
        if indexPath.row == 7 {
                                 let newViewController7 = self.storyboard?.instantiateViewController(withIdentifier: "ReviewExamVC") as! ReviewExamViewController
                                           
                                        self.navigationController?.pushViewController(newViewController7, animated: true)
                                 
                             
                             }
        
        
        if indexPath.row == 8 {
            let newViewController8 = self.storyboard?.instantiateViewController(withIdentifier: "AnswerSheetVC") as! AnswerSheetViewController
                      
                   self.navigationController?.pushViewController(newViewController8, animated: true)
            
        
        }
        if indexPath.row == 9 {
            let newViewController9 = self.storyboard?.instantiateViewController(withIdentifier: "ObjectionReviewVC") as! ObjectionReviewViewController
                      
                   self.navigationController?.pushViewController(newViewController9, animated: true)
            
        
        }
        if indexPath.row == 10 {
            let newViewController10 = self.storyboard?.instantiateViewController(withIdentifier: "MyFavoritesVC") as! MyFavoritesViewController
                      
                   self.navigationController?.pushViewController(newViewController10, animated: true)
            
        
        }
        
        if indexPath.row == 11 {
            let newViewController11 = self.storyboard?.instantiateViewController(withIdentifier: "ParentsAreaVC") as! ParentsAreaViewController
                      
                   self.navigationController?.pushViewController(newViewController11, animated: true)
            
        
        }
        
        if indexPath.row == 12 {
            let newViewController12 = self.storyboard?.instantiateViewController(withIdentifier: "SettingVC") as! SettingViewController

                   self.navigationController?.pushViewController(newViewController12, animated: true)
            
        
        }
        
    }
    
}
