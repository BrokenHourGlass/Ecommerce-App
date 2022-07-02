//
//  HomePage.swift
//  ecommerce
//
//  Created by admin on 6/27/22.
//

import UIKit
import SwiftUI

struct HomePage: View {
    private var details = Info()
    let design = elements()
    var setup: HomeLayout
    
    @State var query = ""
    
    init(){
        self.setup = HomeLayout(primary: design.primaryColor, secondary: design.secondaryColor, Accent: design.accent)
    }
    
    func catalogSnippet(img: String, name: String, link: String) -> some View{
        return ZStack{
            Image(img).resizable().background(Capsule().fill(setup.primary).frame(width: 250, height: 250, alignment: .center)).frame(width: 350, height: 250, alignment: .center)
            Text(name).foregroundColor(setup.Accent)
        }
    }
    
        var body: some View {
            setup.topBar()
            HStack{
                TextField("Search", text: $query).foregroundColor(setup.primary)
            }
            ScrollView {
                ZStack{
                    Color.black
                    Image("adBackground")
                    VStack{
                        Spacer()
                        Text("New in Stock").foregroundColor(setup.secondary).font(.system(size: 28))
                        Spacer()
                        Text("Corsair").foregroundColor(setup.secondary).font(.system(size: 24))
                        Text("Desktop PC").foregroundColor(setup.secondary).font(.system(size: 24))
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
                    Text("signup here").foregroundColor(setup.secondary)
                }.frame(width: 5000, height: 500, alignment: .center).background(setup.primary)
                setup.companySummary()
                HStack{
                    VStack{
                        Text(details.legal).multilineTextAlignment(.center).foregroundColor(setup.secondary).frame(maxWidth: 300, alignment: .center)
                    }.frame(maxWidth: .infinity).background(setup.primary)
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
