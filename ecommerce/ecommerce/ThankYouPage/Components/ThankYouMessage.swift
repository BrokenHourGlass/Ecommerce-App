//
//  ThankYouMessage.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct ThankYouMessage: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("THANK YOU FOR YOUR ORDER")
                .font(.title)
                .bold()
            Text("You will recieve an email confirmation shortly.")
                .foregroundColor(Color.gray)
        }
    }
}

struct ThankYouMessage_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouMessage()
    }
}
