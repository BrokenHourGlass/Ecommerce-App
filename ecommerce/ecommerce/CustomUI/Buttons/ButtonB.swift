//
//  ButtonB.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ButtonB: View {
    @Binding var showNextView: Bool
    var title: String
    
    var body: some View {
        Button(action: {
            showNextView = true
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
        ButtonB(showNextView: .constant(true), title: "Button B")
    }
}
