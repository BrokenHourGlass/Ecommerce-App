//
//  PreviewHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct PreviewHelper: View {
    var img: String
    
    var body: some View {
        if (!img.isEmpty) {
            Image(img)
                .resizable()
                .scaledToFill()
                .clipped()
                .listRowInsets(EdgeInsets())
                .cornerRadius(15)
        } else {
            Section {
                HStack {
                    Spacer()
                    Text("No image available")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    Spacer()
                }
            }
            .frame(height: 100)
            .background(Color.gray)
            .cornerRadius(15)
        }
    }
}

struct PreviewHelper_Previews: PreviewProvider {
    static var previews: some View {
        PreviewHelper(img: products[0].previews[0].img)
    }
}
