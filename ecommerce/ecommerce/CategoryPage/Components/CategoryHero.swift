//
//  CategoryHero.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryHero: View {
    var body: some View {
        Image("wp1820016")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            .clipped()
            .listRowInsets(EdgeInsets())
    }
}

struct CategoryHero_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHero()
    }
}
