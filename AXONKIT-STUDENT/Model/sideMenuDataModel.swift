//
//  sideMenuDataModel.swift
//  HichApp
//
//  Created by Sajjad Sarkoobi on 8/21/20.
//  Copyright © 2020 Scairp. All rights reserved.
//

import Foundation
import UIKit

struct sideMenuDataModel {
    
    var title:sideMenuTitles
    var value:Int
    var stringValue:String?
    var icon: UIImage
    
}

enum sideMenuTitles:String {
    case profile = "Profile"
    case MyOfflinecourses = "My Off-line courses"
    case Declareanabsence = "Declare an absence"
    case MyEduDossier = "My Edu. Dossier"
    case Invitefriends  = "Invite friends "
    case MyTasks = "My Tasks"
    case Assignment  = "Assignment "
   // case ReviewExam = "review Exam"
    case AnswerSheets = "Answer Sheets"
    case Objectionreview = "Objection review"
   // case Favorite = "Favorite"
   // case ParentsArea = "Parents Area"
    case Setting = "Setting"
    case none = ""
}


class SideMenuDataManager {
    
    private var datasource: [sideMenuDataModel] = [sideMenuDataModel]()
    
    static var shared:SideMenuDataManager = SideMenuDataManager()
    
    init() {
        
    }
    
    private func populateData() {
//        let notifData = NotificationClass.shared.get()
        datasource = [
            sideMenuDataModel(title: .profile, value: 0, icon: setImage(forTitle: .profile)),
            sideMenuDataModel(title: .MyOfflinecourses, value: 0, icon: setImage(forTitle: .MyOfflinecourses)),
            sideMenuDataModel(title: .Declareanabsence, value: 0, icon: setImage(forTitle: .Declareanabsence)),
            sideMenuDataModel(title: .MyEduDossier, value :0, icon: setImage(forTitle: .MyEduDossier)),
            sideMenuDataModel(title: .Invitefriends, value: 0, icon: setImage(forTitle: .Invitefriends)),
            sideMenuDataModel(title: .MyTasks, value: 4, icon: setImage(forTitle: .MyTasks)),
            sideMenuDataModel(title: .Assignment, value: 0, icon: setImage(forTitle: .Assignment)),
           // sideMenuDataModel(title: .ReviewExam, value: 0, icon: setImage(forTitle: .ReviewExam)),
            sideMenuDataModel(title: .AnswerSheets, value: 0, icon: setImage(forTitle: .AnswerSheets)),
            sideMenuDataModel(title: .Objectionreview, value: 0, icon: setImage(forTitle: .Objectionreview)),
          //  sideMenuDataModel(title: .Favorite, value: 0, icon: setImage(forTitle: .Favorite)),
           // sideMenuDataModel(title: .ParentsArea, value: 0, icon: setImage(forTitle: .ParentsArea)),
            sideMenuDataModel(title: .Setting, value: 0, icon: setImage(forTitle: .Setting))
        ]
                

        
    }
    
    
    private func setImage(forTitle icon:sideMenuTitles) -> UIImage {
        
        var image = UIImage()
//        let nightMode = Global_Variables.GLOB_appSettings.niteMode
        switch icon {
        case .profile:
//            image = nightMode ?
//                UIImage(named: "home_dark")! :
            image = UIImage(systemName: "person")!
        case .MyOfflinecourses:
//            image = nightMode ?
//                UIImage(named: "level1")! :
              image = UIImage(systemName: "play.circle")!
        case .Declareanabsence:
//            image = nightMode ?
//                UIImage(named: "gray-coin_dark")! :
               image = UIImage(systemName: "minus.circle")!
        case .MyEduDossier:
//            image = nightMode ?
//                UIImage(named: "bell_on_dark")! :
             image = UIImage(systemName: "folder")!
        case .Invitefriends:
//            image = nightMode ?
//                UIImage(named: "comment_dark")! :
              image = UIImage(systemName: "person.badge.plus")!
        case .MyTasks:
//            image = nightMode ?
//                UIImage(named: "shareIcon_dark")! :
             image = UIImage(systemName: "text.insert")!
        case .Assignment:
//            image = nightMode ?
//                UIImage(named: "settings_icon_dark")! :
               image = UIImage(systemName: "checkmark.rectangle")!
     //   case .ReviewExam:
//            image = nightMode ?
//                UIImage(named: "contactUs_dark")! :
            //   image = UIImage(systemName: "archivebox")!
        case .AnswerSheets:
//            image = nightMode ?
//                UIImage(named: "help_circle_dark")! :
               image = UIImage(systemName: "doc.plaintext")!
        case .Objectionreview:
//            image = nightMode ?
//                UIImage(named: "logout_dark")! :
             image = UIImage(systemName: "hand.raised.fill")!
        //case .Favorite:
//            image = nightMode ?
//                UIImage(named: "appstore_dark")! :
             //  image = UIImage(systemName: "heart")!
       // case .ParentsArea:
          // image = UIImage(systemName: "person.crop.rectangle")!
        case .Setting:
            image = UIImage(systemName: "gear")!
           // image = UIImage()
        case .none:
            break
        }
        
        
        return image
    }
    
    
    
    func getSideMenuData() -> [sideMenuDataModel] {
        populateData()
        return self.datasource
    }
    
}
