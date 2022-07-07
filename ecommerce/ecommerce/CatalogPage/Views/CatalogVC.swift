//
//  CatalogPageVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import UIKit
import SwiftUI

class CatalogPageVC: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let childView = UIHostingController(rootView: CatalogSVC())
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
