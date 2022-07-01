//
//  ButtonA.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ButtonA: View {
    var title: String
    
    var body: some View {
        Button(action: {
            print("Button A")
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
        ButtonA(title: "ButtonA")
    }
}
