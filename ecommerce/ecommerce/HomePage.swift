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
    private var design = elements()
    private var details = Info()
    
    func catalogSnippet(img: String, name: String, link: String) -> some View{
        return ZStack{
            Image(img).resizable().background(Capsule().fill(design.primaryColor).frame(width: 250, height: 250, alignment: .center)).frame(width: 350, height: 250, alignment: .center)
            Text(name).foregroundColor(design.accent)
        }
    }
    
        var body: some View {
            VStack{
                HStack{
                    Text("/ShopIT").foregroundColor(design.secondaryColor).font(.system(size: 28))
                    Spacer()
                    Button(action:{
                        print("clicked")
                    })
                    {
                        Image(systemName: "cart").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().frame(width: 30, height: 28, alignment: .leading)
                    }
                }.frame(width: .infinity, height: 50, alignment: .center).background(design.primaryColor)
            HStack{
                TextField("Search", text: $query).foregroundColor(design.primaryColor)
            }
            ScrollView {
                ZStack{
                    Color.black
                    Image("adBackground")
                    VStack{
                        Spacer()
                        Text("New in Stock").foregroundColor(design.secondaryColor).font(.system(size: 28))
                        Spacer()
                        Text("Corsair").foregroundColor(design.secondaryColor).font(.system(size: 24))
                        Text("Desktop PC").foregroundColor(design.secondaryColor).font(.system(size: 24))
                        Spacer()
                        Spacer()
                    }
                }
                VStack{
                    Spacer()
                    catalogSnippet(img: "home", name: "bob", link: "bob")
                    Spacer()
                    catalogSnippet(img: "home", name: "bob", link: "bob")
                    Spacer()
                    catalogSnippet(img: "home", name: "bob", link: "bob")
                }
                VStack{
                    Text("signup here").foregroundColor(design.secondaryColor)
                }.frame(width: 5000, height: 500, alignment: .center).background(design.primaryColor)
                HStack{
                    VStack{
                        HStack{
                            Text("BEST").foregroundColor(design.accent)
                            Text(details.summaryTitle).foregroundColor(design.primaryColor)
                        }
                        Image("inspire")
                        Text(details.summmary).multilineTextAlignment(.center).foregroundColor(design.primaryColor).frame(maxWidth: 300, alignment: .center)
                    }.frame(maxWidth: .infinity).background{design.secondaryColor}
                }
                HStack{
                    VStack{
                        Text(details.legal).multilineTextAlignment(.center).foregroundColor(design.secondaryColor).frame(maxWidth: 300, alignment: .center)
                    }.frame(maxWidth: .infinity).background(design.primaryColor)
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
