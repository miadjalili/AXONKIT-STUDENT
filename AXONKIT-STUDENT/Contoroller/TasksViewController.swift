//
//  TasksViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 12/15/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {

    
    var toolBar = UIToolbar()
    var datePicker  = UIDatePicker()
    
    
    @IBOutlet weak var taskView: UIView!
    @IBOutlet weak var fromDateBTn: UIButton!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var tagBTn: UIButton!
    
    
    
    @IBAction func tagBTnAction(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Travel", style: .default, handler: { (action : UIAlertAction) in
            
            self.tagLabel.text = "Travel"
            self.tagBTn.setTitle(" Travel", for: .normal)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Visiting somewhere", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text =  "Visiting somewhere"
            self.tagBTn.setTitle(" Visiting", for: .normal)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Family", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text = "Family"
            self.tagBTn.setTitle(" Family", for: .normal)
        }))
        actionSheet.addAction(UIAlertAction(title: "Meeting", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text = "Meeting"
            self.tagBTn.setTitle(" Meeting", for: .normal)
        }))
        actionSheet.addAction(UIAlertAction(title: "Friends", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text = "Friends"
            self.tagBTn.setTitle(" Friends", for: .normal)
        }))
        actionSheet.addAction(UIAlertAction(title: "Restaurant", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text = "Restaurant"
            self.tagBTn.setTitle(" Restaurant", for: .normal)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Health & Medical", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text = "Health & Medical"
            self.tagBTn.setTitle(" Health & Medical", for: .normal)

        }))
        actionSheet.addAction(UIAlertAction(title: "Beauty", style: .default, handler: { (action : UIAlertAction) in
             self.tagLabel.text = "Beauty"
            self.tagBTn.setTitle(" Beauty", for: .normal)

        }))
//        let img = UIImage(systemName: "pencil")
//        actionSheet.setValue(img, forKey: "image")
        actionSheet.addAction(UIAlertAction(title: "Miscellaneous", style: .default, handler: { (action : UIAlertAction) in
                   self.tagLabel.text = "Miscellaneous"
            self.tagBTn.setTitle(" Miscellaneous", for: .normal)

               }))
        
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(actionSheet, animated: true, completion: nil)
    }
               
        
        
        
        
        
  
    
    
    
    @IBAction func fromDateBTnAction(_ sender: UIButton) {
        
        
        
        
        datePicker = UIDatePicker.init()

        datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: 0, to: Date())
        datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: 20, to: Date())
        
        datePicker.backgroundColor = UIColor.white
        datePicker.autoresizingMask = .flexibleWidth
        datePicker.datePickerMode = .date
        
        
        
        datePicker.addTarget(self, action: #selector(self.dateChanged(_:)), for: .valueChanged)
        datePicker.frame = CGRect(x: 0.0, y: UIScreen.main.bounds.size.height - 350, width: UIScreen.main.bounds.size.width, height: 350)
        self.view.addSubview(datePicker)
        
        toolBar = UIToolbar(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height - 350, width: UIScreen.main.bounds.size.width, height: 50))
        toolBar.barStyle = .default
        toolBar.items = [UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil), UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.onDoneButtonClick))]
        toolBar.sizeToFit()
        self.view.addSubview(toolBar)
        
        
        
        
    }
    @objc func dateChanged(_ sender: UIDatePicker?) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd yyyy"
       
            
        if let date = sender?.date {
          //  print("Picked the date \(dateFormatter.string(from: date))")
            if fromDateBTn.isSelected == true{
            fromDateBTn.setTitle(dateFormatter.string(from: date), for: .normal)
            }
            if toDateBTn.isSelected == true{
                toDateBTn.setTitle(dateFormatter.string(from: date), for: .normal)
            }
        }
    }

    @objc func onDoneButtonClick() {
        toolBar.removeFromSuperview()
        datePicker.removeFromSuperview()
    }

   
    @IBOutlet weak var toDateBTn: UIButton!
    
    @IBAction func toDateBTnAction(_ sender: UIButton) {
        
       datePicker = UIDatePicker.init()

            datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: 0, to: Date())
            datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: 20, to: Date())
            
            datePicker.backgroundColor = UIColor.white
            datePicker.autoresizingMask = .flexibleWidth
            datePicker.datePickerMode = .date
            
            
            
            datePicker.addTarget(self, action: #selector(self.dateeChanged(_:)), for: .valueChanged)
            datePicker.frame = CGRect(x: 0.0, y: UIScreen.main.bounds.size.height - 350, width: UIScreen.main.bounds.size.width, height: 350)
            self.view.addSubview(datePicker)
            
            toolBar = UIToolbar(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height - 350, width: UIScreen.main.bounds.size.width, height: 50))
            toolBar.barStyle = .default
            toolBar.items = [UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil), UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.onDoneButtonClick))]
            toolBar.sizeToFit()
            self.view.addSubview(toolBar)
            
       
        
        
        
    }
    @objc func dateeChanged(_ sender: UIDatePicker?) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd yyyy"
       
            
        if let date = sender?.date {
          //  print("Picked the date \(dateFormatter.string(from: date))")
           
            
            
                toDateBTn.setTitle(dateFormatter.string(from: date), for: .normal)
            
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My Tasks"
      
        
        taskView.layer.borderWidth = 0.3
        
        
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
    
    func pickerDate(button:UIButton){
        
        
        
        
        
        
        
    }

}
