//
//  ThankYouImage.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct ThankYouImage: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFill()
                .clipped()
                .listRowInsets(EdgeInsets())
                .foregroundColor(Color.red)
            Spacer()
        }
    }
}

struct ThankYouImage_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouImage()
    }
}
