//
//  CategorirsViewController.swift
//  AXONKIT-STUDENT
//
//  Created by miadjalili on 11/26/20.
//  Copyright © 2020 MIAD. All rights reserved.
//

import UIKit
import SideMenu

class CategorirsViewController: UIViewController {
    
    var LeftBtn : SideMenuNavigationController?
   
    @IBOutlet weak var CollectionView: UICollectionView!
   
    @IBAction func searchItenBTn(_ sender: UIBarButtonItem) {
        
    
         //navigationItem.title  = ""
        
        
    }
    @IBAction func sideMenuBTn(_ sender: UIBarButtonItem) {
        handelarmenue(Side: LeftBtn)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    
        
        
        
        //navigationController?.navigationBar.barTintColor = UIColor.blue
        CollectionView.delegate = self
        CollectionView.dataSource =  self
        navigationItem.title  = "Categories"
        let contoroler = self.storyboard?.instantiateViewController(withIdentifier: "SiddMenuIde") as! SideMenuViewController
       // LeftBtn = SideMenuNavigationController(rootViewController: contoroler)
      //  LeftBtn?.leftSide = true
        self.addSideMenu()
        
        
        
        print("Categories")
        
        
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
    
    
    
@objc func handelarmenue(Side: SideMenuNavigationController?){
    
     
     present(Side!, animated: true, completion: nil)
        }

}

 let items = ["arch","art","edu","engineering","environ","hospitality","IT","mangm","med","mixed","natural_science","society"]




extension CategorirsViewController :  UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  CollectionView.dequeueReusableCell(withReuseIdentifier: "collectionident", for: indexPath) as! CollectionViewCell
        
        cell.imageViewCol.image = UIImage(named: items[indexPath.row])
        
        return cell
        
        
        
    }
    
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        print("okkkk")
        print(indexPath)
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.main.bounds
        
        var widthSize = 0
        var heightsize = 0
        
        
        
        //iphonex/6/7/8
        if screenSize.width == 375 {
                   widthSize = 172
                   heightsize = 125
               }
        
        
        //iphone11/6+/7+/8+
        if screenSize.width == 414 {
            widthSize = 191
            heightsize = 125
        }
        
        return CGSize(width: widthSize, height: heightsize)
    }
    
    
    
    
    
    
    
    
    
}
