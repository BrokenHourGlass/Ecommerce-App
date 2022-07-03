//
//  ChooseCategory.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ChooseCategory: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("OTHER PRODUCTS")
                .font(.title2)
                .bold()
                .padding([.bottom], 15)
            ChooseCategoryHelper(category: "HEADPHONES", img: "shared/image-xx99-mark-one-headphones")
            ChooseCategoryHelper(category: "SPEAKERS", img: "shared/image-zx9-speaker")
            ChooseCategoryHelper(category: "EARPHONES", img: "product-yx1-earphones/image-category-page-preview")
        }
        .frame(width: 200)
        .padding([.top], 30)
    }
}

struct ChooseCategory_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCategory()
    }
}
