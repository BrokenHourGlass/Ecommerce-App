//
//  ButtonB.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ButtonB: View {
    var title: String
    
    var body: some View {
        Button(action: {
            print("Button B")
        }) {
            Label(title, systemImage: "chevron.right")
                .labelStyle(.titleAndIcon)
        }
        .foregroundColor(Color.gray)
        .padding()
    }
}

struct ButtonB_Previews: PreviewProvider {
    static var previews: some View {
        ButtonB(title: "Button B")
    }
}
