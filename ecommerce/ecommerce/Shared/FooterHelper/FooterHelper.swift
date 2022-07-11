//
//  FooterHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct FooterHelper: View {
    var name = GlobalConstants.app.rawValue
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Text(name)
                .font(.title)
                .bold()
            VStack(spacing: 10) {
                Text(Categories.home.rawValue)
                    .bold()
                Text(Categories.headphones.rawValue)
                    .bold()
                Text(Categories.speakers.rawValue)
                    .bold()
                Text(Categories.earphones.rawValue)
                    .bold()
            }
            Text(GlobalConstants.footer.rawValue)
                .multilineTextAlignment(.center)
            Text(GlobalConstants.copyright.rawValue)
                .multilineTextAlignment(.center)
        }
        .padding([.leading, .trailing], 27)
        .padding([.top, .bottom], 40)
        .foregroundColor(Color.white)
        .background(Color.black)
    }
}

struct FooterHelper_Previews: PreviewProvider {
    static var previews: some View {
        FooterHelper()
    }
}
