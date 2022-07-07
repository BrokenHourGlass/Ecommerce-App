//
//  CatalogAd.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/6/22.
//

import SwiftUI

struct CatalogAd: View {
    var img: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(img)
                .resizable()
                .scaledToFill()
                .clipped()
                .listRowInsets(EdgeInsets())
        }
    }
}

struct CatalogAd_Previews: PreviewProvider {
    static var previews: some View {
        CatalogAd(img: "image")
    }
}
