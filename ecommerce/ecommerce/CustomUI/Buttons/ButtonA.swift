//
//  ButtonA.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ButtonA: View {
    var title: String
    @Binding var showNextView: Bool
    
    var body: some View {
        Button(action: {
            showNextView = true
        }) {
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .border(Color.red)
        }
        .foregroundColor(Color.white)
        .background(Color.red)
    }
}

struct ButtonA_Previews: PreviewProvider {
    static var previews: some View {
        ButtonA(title: "ButtonA", showNextView: .constant(false))
    }
}
