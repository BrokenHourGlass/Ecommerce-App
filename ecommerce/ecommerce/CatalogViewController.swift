//
//  CatalogViewController.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/28/22.
//

import UIKit
import SwiftUI

class CatalogPage: UIHostingController<ContentView>{
    required init?(coder: NSCoder){
        super.init(coder: coder, rootView: ContentView())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


// code for collectionView

//ScrollView(.vertical, showsIndicators: false){
//
//    ForEach(0..<CollectionSwiftUIView.row){ i in
//    HStack{
//    ForEach(0..<CollectionSwiftUIView.column){
//        j in CollectionSwiftUIView().onTapGesture {
//            print("\(i),\(j)")
//            
//        }
//    }
//}
//}
//
//}
