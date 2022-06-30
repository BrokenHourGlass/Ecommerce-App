//
//  HomePage.swift
//  ecommerce
//
//  Created by admin on 6/27/22.
//

import UIKit
import SwiftUI

struct HomePage: View {
    @State private var query: String = ""
    
    func catalogSnippet(img: String, name: String, link: String) -> some View{
        return Capsule()
            .fill(Color.black)
            .frame(width: 200, height: 200, alignment: .center)
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("ShopIT").frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color.blue).background{Color.black}
                Spacer()
                Button("a"){
                    print("clicked")
                }
                Button(action:{
                    print("clicked")
                })
                {
                    Image(systemName: "cart").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).background{Color.black}
                }
            }
            
            HStack{
                TextField("Search", text: $query).foregroundColor(Color.white)
            }
            ScrollView {
                ZStack{
                    Color.black
                    Image("adBackground")
                    VStack{
                        Spacer()
                        Text("New in Stock").foregroundColor(Color.white).font(.system(size: 28))
                        Spacer()
                        Text("Corsair").foregroundColor(Color.white).font(.system(size: 24))
                        Text("Desktop PC").foregroundColor(Color.white).font(.system(size: 24))
                        Spacer()
                        Spacer()
                    }
                }
                VStack{
                    catalogSnippet(img: "bob", name: "bob", link: "bob")
                    Spacer()
                    catalogSnippet(img: "bob", name: "bob", link: "bob")
                    catalogSnippet(img: "bob", name: "bob", link: "bob")
                }
            }
        }
    }
}

class MainPage: UIHostingController<HomePage>{
    required init?(coder: NSCoder) {
        super.init(coder: coder, rootView: HomePage())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
