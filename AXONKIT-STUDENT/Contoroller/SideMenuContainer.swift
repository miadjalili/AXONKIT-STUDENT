//
//  SideMenuContainer.swift
//  sideMenu
//
//  Created by Sajjad Sarkoobi on 12/26/20.
//

import UIKit

class SideMenuContainer: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var sender :UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.backgroundColor = .clear
        
        self.containerView.alpha = 0
        self.containerView.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissThisView))
        self.containerView.addGestureRecognizer(tap)
        
       self.tableView.transform = CGAffineTransform(translationX: -self.view.frame.width, y: 0)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        appear()
    }

    func appear(){
        UIView.animate(withDuration: 0.3) {
            self.containerView.alpha = 1
        } completion: { (_) in
            UIView.animate(withDuration: 0.4) {
                self.tableView.transform = .identity
            }
        }

    }
    
    @objc func dismissThisView(){
        UIView.animate(withDuration: 0.3) {
            self.tableView.transform = CGAffineTransform(translationX: -self.view.frame.width, y: 0)
            
        } completion: { (_) in
            UIView.animate(withDuration: 0.4) {
                self.containerView.alpha = 0
            } completion: { (_) in
                self.dismiss(animated: false) {
                    self.removeFromParent()
                }
            }

           
        }

    }

}


//MARK: -Table view
extension SideMenuContainer : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (SideMenuDataManager.shared.getSideMenuData().count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "sideMenuCell", for: indexPath) as! SideMenuTableViewCell
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     tableView.deselectRow(at: indexPath, animated: true)
    
     
    
        if indexPath.row == 0 {
     
            dismissThisView()
     let newViewController0 = self.storyboard?.instantiateViewController(withIdentifier: "profileVC") as! ProfileViewController
    
            self.sender?.navigationController?.pushViewController(newViewController0, animated: true)
           
        }
        if indexPath.row == 1 {
            dismissThisView()
            let newViewController1 = self.storyboard?.instantiateViewController(withIdentifier: "OffLineCourseVC") as! OffLineCourseViewController
               
            self.sender?.navigationController?.pushViewController(newViewController1, animated: true)
               }
        
        
        if indexPath.row == 2 {
            dismissThisView()
        let newViewController2 = self.storyboard?.instantiateViewController(withIdentifier: "DeclareAnAbsenceVC") as! DeclareAnAbsenceViewController
           
            self.sender?.navigationController?.pushViewController(newViewController2, animated: true)
           }
         if indexPath.row == 3 {
            dismissThisView()
            let newViewController3 = self.storyboard?.instantiateViewController(withIdentifier: "EducationalDossierVC") as! EducationalDossierViewController
                      
            self.sender?.navigationController?.pushViewController(newViewController3, animated: true)
            
        
        }
        
        if indexPath.row == 4 {
            dismissThisView()
                   let newViewController4 = self.storyboard?.instantiateViewController(withIdentifier: "InvitefriendsVC") as! InviteFriendsViewController
                             
            self.sender?.self.navigationController?.pushViewController(newViewController4, animated: true)
                   
               
               }
        
        if indexPath.row == 5 {
            dismissThisView()
                          let newViewController5 = self.storyboard?.instantiateViewController(withIdentifier: "TasksVC") as! TasksViewController
                                    
            self.sender?.self.navigationController?.pushViewController(newViewController5, animated: true)
                          
                      
                      }
        
        if indexPath.row == 6 {
            dismissThisView()
                                 let newViewController6 = self.storyboard?.instantiateViewController(withIdentifier: "AssignmentVC") as! AssignmentViewController
                                           
            self.sender?.navigationController?.pushViewController(newViewController6, animated: true)
                                 
                             
                             }
        if indexPath.row == 7 {
            dismissThisView()
                                 let newViewController7 = self.storyboard?.instantiateViewController(withIdentifier: "ReviewExamVC") as! ReviewExamViewController
                                           
            self.sender?.self.navigationController?.pushViewController(newViewController7, animated: true)
                                 
                             
                             }
        
        
        if indexPath.row == 8 {
            dismissThisView()
            let newViewController8 = self.storyboard?.instantiateViewController(withIdentifier: "AnswerSheetVC") as! AnswerSheetViewController
                      
            self.sender?.navigationController?.pushViewController(newViewController8, animated: true)
            
        
        }
        
        if indexPath.row == 9 {
            dismissThisView()
            let newViewController9 = self.storyboard?.instantiateViewController(withIdentifier: "MyFavoritesVC") as! MyFavoritesViewController
                      
            self.sender?.navigationController?.pushViewController(newViewController9, animated: true)
            
        
        }
        if indexPath.row == 9 {
            dismissThisView()
            let newViewController9 = self.storyboard?.instantiateViewController(withIdentifier: "MyFavoritesVC") as! MyFavoritesViewController
                      
            self.sender?.navigationController?.pushViewController(newViewController9, animated: true)
            
        
        }
        
        
    }
    
}
