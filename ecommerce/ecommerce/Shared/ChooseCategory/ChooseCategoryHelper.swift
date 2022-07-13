//
//  ChooseCategoryHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ChooseCategoryHelper: View {
    @Binding var showNextView: Bool
    @Binding var chosenCategory: String
    
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
            Button(action: {
                chosenCategory = category.lowercased()
                showNextView = true
            }) {
                Label("SHOP", systemImage: "chevron.right")
                    .labelStyle(.titleAndIcon)
            }
            .foregroundColor(Color.gray)
            .padding()
            
        }
    }
}

struct ChooseCategoryHelper_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCategoryHelper(showNextView: .constant(false), chosenCategory: .constant("headphones"), category: "Category", img: products[0].productIMG)
    }
}
