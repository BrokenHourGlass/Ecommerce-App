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
            Text(GlobalConstants.aboutTitle.rawValue)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            Text(GlobalConstants.about.rawValue)
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
