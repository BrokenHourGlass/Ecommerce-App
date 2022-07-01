//
//  About.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct About: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Image("shared/image-best-gear")
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFill()
                .clipped()
                .listRowInsets(EdgeInsets())
                .cornerRadius(15)
            Text("BRINGING YOU THE BEST AUDIO GEAR")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            Text("Located at the heart of New York City, Audiophile is the premier store for high end headphones, earphones, speakers, and audio accessories. We have a large showroom and luxury demonstration rooms available for you to browse and experience a wide range of our products. Stop by our store to meet some of the fantastic people who make Audiophile the best place to buy your portable audio equipment.")
                .multilineTextAlignment(.center)
        }
        .padding([.leading, .trailing], 27)
        .padding([.top, .bottom], 50)
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
