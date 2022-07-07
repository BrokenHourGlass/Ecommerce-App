//
//  TemporaryVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/2/22.
//

import UIKit
import SwiftUI

class TemporaryVC: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProductDB.productDb.createDB()
        ProductDB.productDb.createTable()
        ProductDB.productDb.insertData(name: "bob", category: "rock", new: 0, price: 9.99, featured: 1, cartIMG: "none", productIMG: "None", description: "Bob is to old for this shit", features: "A lack of hair")
        print(ProductDB.productDb.getData())
        print("done")
        sleep(20)
        
        // Do any additional setup after loading the view.
        let childView = UIHostingController(rootView: TemporarySVC())
        addChild(childView)
        childView.view.frame = container.bounds
        container.addSubview(childView.view)
        
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
