//
//  ChooseCategoryHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ChooseCategoryHelper: View {
    var category: String
    var img: String
    
    var body: some View {
        VStack {
            VStack(spacing: 12) {
                Image(img)
                    .resizable()
                    .frame(width: 200, height: 200)
                Text(category)
                    .bold()
            }
            ButtonB(title: "SHOP")
        }
    }
}

struct ChooseCategoryHelper_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCategoryHelper(category: "Category", img: products[0].productIMG)
    }
}
