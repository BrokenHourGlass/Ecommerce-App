//
//  HomeLayout.swift
//  ecommerce
//
//  Created by admin on 7/1/22.
//

import Foundation
import SwiftUI

class HomeLayout{
    
    var primary: Color
    var secondary: Color
    var Accent: Color
    
    var details = Info()
    
    init(primary: Color, secondary: Color, Accent: Color){
        self.primary = primary
        self.secondary = secondary
        self.Accent = Accent
    }
    
    func topBar() -> some View{
       return VStack{
            HStack{
                Text("/ShopIT").foregroundColor(secondary).font(.system(size: 28))
                Spacer()
                Button(action:{
                    print("clicked")
                })
                {
                    Image(systemName: "cart").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().frame(width: 30, height: 28, alignment: .leading)
                }
            }.frame(width: .infinity, height: 50, alignment: .center).background(primary)
        }.frame(width: .infinity, height: 50, alignment: .center).background(primary)
    }
    
    func companySummary() -> some View{
        HStack{
            VStack{
                HStack{
                Text("BEST").foregroundColor(Accent)
                Text(details.summaryTitle).foregroundColor(primary)
            }
            Image("inspire")
            Text(details.summmary).multilineTextAlignment(.center).foregroundColor(primary).frame(maxWidth: 300, alignment: .center)
            }.frame(maxWidth: .infinity).background{secondary}
        }
    }
}
