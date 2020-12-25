//
//  CalenderViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/28/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit







class CalenderViewController: UIViewController {

    var toolBar = UIToolbar()
    var datePicker  = UIDatePicker()
    
    
    @IBOutlet weak var dateBakgroundView: UIView!
    
    
   

    
    @IBOutlet weak var tableViewcalnder: UITableView!
    
  
    
    @IBOutlet weak var dateTimeBTn: UIButton!
    
    @IBAction func dateTimeBTnAction(_ sender: UIButton) {
        
        datePicker = UIDatePicker.init()

        datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: 0, to: Date())
        datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: 20, to: Date())
        
        datePicker.backgroundColor = UIColor.white
        datePicker.autoresizingMask = .flexibleWidth
        datePicker.datePickerMode = .date
        
        
        
        datePicker.addTarget(self, action: #selector(self.dateChanged(_:)), for: .valueChanged)
        datePicker.frame = CGRect(x: 0.0, y: UIScreen.main.bounds.size.height - 350, width: UIScreen.main.bounds.size.width, height: 300)
        self.view.addSubview(datePicker)
        
        toolBar = UIToolbar(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height - 350, width: UIScreen.main.bounds.size.width, height: 50))
        toolBar.barStyle = .default
        toolBar.items = [UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil), UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.onDoneButtonClick))]
        toolBar.sizeToFit()
        self.view.addSubview(toolBar)
        
        
    }
    
    @objc func dateChanged(_ sender: UIDatePicker?) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
       
            
        if let date = sender?.date {
          //  print("Picked the date \(dateFormatter.string(from: date))")
            dateTimeBTn.setTitle(dateFormatter.string(from: date), for: .normal)
        }
    }

    @objc func onDoneButtonClick() {
        toolBar.removeFromSuperview()
        datePicker.removeFromSuperview()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateBakgroundView.layer.borderWidth = 0.5
       
        
        
        let currentDateTime = Date()
        let formatter = DateFormatter()
       // formatter.timeStyle = .medium
        
        formatter.dateFormat = "MMMM yyyy"
        
        
        let dateTimeString = formatter.string(from: currentDateTime)
        print(dateTimeString)
        dateTimeBTn.setTitle(dateTimeString, for: .normal)
        
        tableViewcalnder.delegate = self
        tableViewcalnder.dataSource = self
        
        
        
        print("CalenderViewController")
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
extension CalenderViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewcalnder.dequeueReusableCell(withIdentifier: "calendarcell", for:indexPath) as! CalenderTableViewCell
        cell.delegate = self
    
        
        
        
        
        
        return cell
    }
    
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         
    return 67.0
   }
    
}

extension CalenderViewController: presentalertCell {
    func alertCell() {
        print("BTn")
let alert = UIAlertController(title: "Attention!", message: "Are you sure you want to make changes to this task?", preferredStyle: .alert)
                   let action = UIAlertAction(title: "Remove it,please!", style: .default) { (action) in
                    
                       
                   }
        
                   alert.addAction(action)
                   alert.addAction(UIAlertAction(title: "Edii it , please!", style: .default) { (action) in
                    
                    })
                    alert.addAction(UIAlertAction(title: "Not now,I changed my mind", style: .cancel) { (action) in
                        })
                   present(alert,animated: true,completion: nil)
    }
    
    
    
    
    
    
    
}
