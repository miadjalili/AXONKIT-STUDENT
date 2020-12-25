//
//  AssignmentViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/19/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit
import MobileCoreServices

class AssignmentViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Assignment"
        textView.text = "Type your assignment here"
        textView.textColor = UIColor.lightGray
        textView.delegate = self
        textViewDidBeginEditing(textView)
        textViewDidEndEditing(textView)
        // Do any additional setup after loading the view.
    }
    
      func textViewDidBeginEditing(_ textView: UITextView) {
          if textView.textColor == UIColor.lightGray {
              textView.text = ""
              textView.textColor = UIColor.black
          }
      }
     func textViewDidEndEditing(_ textView: UITextView) {
         if textView.text.isEmpty {
             textView.text = "Type your assignment here"
             textView.textColor = UIColor.lightGray
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

}
extension AssignmentViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIDocumentPickerDelegate{
    func clickFunction(){
        let types = [kUTTypePDF, kUTTypeText, kUTTypeRTF, kUTTypeSpreadsheet,kUTTypeJPEG,kUTTypeGIF]
        let importMenu = UIDocumentPickerViewController(documentTypes: types as [String], in: .open)
         importMenu.delegate = self
     
        importMenu.modalPresentationStyle = .formSheet
        self.present(importMenu, animated: true, completion: nil)
    }
    
    
 @IBAction func uploadAssignmentAction(_ sender: UIButton) {
    
       
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
