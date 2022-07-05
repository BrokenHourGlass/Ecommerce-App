//
//  HomePageAd.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageAd: View {
    var img: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(img)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .clipped()
                .listRowInsets(EdgeInsets())
        }
    }
}

struct HomePageAd_Previews: PreviewProvider {
    static var previews: some View {
        HomePageAd(img: "image")
    }
}
