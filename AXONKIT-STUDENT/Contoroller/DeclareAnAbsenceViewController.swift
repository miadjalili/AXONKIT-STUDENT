//
//  Declare an absence Declare an absence DeclareAnAbsenceViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/14/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit
import MobileCoreServices

class DeclareAnAbsenceViewController: UIViewController {

    
    
    @IBOutlet weak var absenceReasonBTn: UIButton!
    
    
    @IBOutlet weak var uploadAbsenceFileBTn: UIButton!
    
    @IBAction func absenceReasonBTnAction(_ sender: UIButton) {
        let titleFont = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        let titleAttrString = NSMutableAttributedString(string: "Absence reason ", attributes: titleFont)
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        actionSheet.setValue(titleAttrString, forKey:"attributedTitle")
            actionSheet.addAction(UIAlertAction(title: "Travel", style: .default, handler: { (action : UIAlertAction) in
                self.absenceReasonBTn.setTitle(" Travel", for: .normal)
            
                    
                
            }))
            
            actionSheet.addAction(UIAlertAction(title: "Event", style: .default, handler: { (action : UIAlertAction) in
             self.absenceReasonBTn.setTitle(" Event", for: .normal)
              
            }))
        
        actionSheet.addAction(UIAlertAction(title: "Illness", style: .default, handler: { (action : UIAlertAction) in
                    self.absenceReasonBTn.setTitle(" Illness", for: .normal)
                      
                   }))
        
        
            
            actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(actionSheet, animated: true, completion: nil)
        }
        
        
        
    
    @IBAction func submitBTnAction(_ sender: UIButton) {
        
       let alert = UIAlertController(title: "Done!", message: " The absence request was submitted successfully.", preferredStyle: .alert)
       let action = UIAlertAction(title: "Ok", style: .default) { (action) in
        
        }
        alert.addAction(action)
                      present(alert,animated: true,completion: nil)
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Declare an absence"
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



extension DeclareAnAbsenceViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIDocumentPickerDelegate{
    func clickFunction(){
        let types = [kUTTypePDF, kUTTypeText, kUTTypeRTF, kUTTypeSpreadsheet,kUTTypeJPEG,kUTTypeGIF]
        let importMenu = UIDocumentPickerViewController(documentTypes: types as [String], in: .open)
         importMenu.delegate = self
     
        importMenu.modalPresentationStyle = .formSheet
        self.present(importMenu, animated: true, completion: nil)
    }
    
    
    @IBAction func uploadAbsenceFile(_ sender: UIButton) {
       
           let imagePikerContoroller =  UIImagePickerController()
    imagePikerContoroller.delegate = self
           let actionSheet = UIAlertController(title: "Choose File", message: "You Can Choose File : .PDF,.TEXT,..." , preferredStyle: .actionSheet)
           
           actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action : UIAlertAction) in
                      UIImagePickerController.isSourceTypeAvailable(.camera)
                      imagePikerContoroller.sourceType = .camera
                      imagePikerContoroller.allowsEditing = true
            
                    self.present(imagePikerContoroller,animated: true,completion: nil)
           }))
           
          
           actionSheet.addAction(UIAlertAction(title: "Document", style: .default, handler: { (action : UIAlertAction) in
           
                self.clickFunction()
              
               
           }))
           actionSheet.addAction(UIAlertAction(title: "Photo Librery", style: .default, handler: { (action : UIAlertAction) in
                             imagePikerContoroller.sourceType = .photoLibrary
                             imagePikerContoroller.allowsEditing = true
                             self.present(imagePikerContoroller, animated: true, completion: nil)
                         }))
                    
           
           actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
           self.present(actionSheet, animated: true, completion: nil)
       }
           
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            //let image = info[.editedImage] as! UIImage
            
           
            picker.dismiss(animated: true, completion: nil)
            
            
            
            
        }
           func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
           
               picker.dismiss(animated: true, completion: nil)
           }
        
        
        
        
        
        
        
           func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
                let myURL = urls.first
        
            
                          return

    
}
}
