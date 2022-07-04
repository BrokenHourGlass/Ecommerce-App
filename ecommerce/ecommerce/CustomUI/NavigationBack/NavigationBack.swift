//
//  NavigationBack.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct NavigationBack: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                HStack {
                    Text("Go Back")
                        .foregroundColor(Color.accentColor)
                }
            }
            Spacer()
        }
        .padding([.leading, .trailing], 20)
        .padding([.top], 5)
    }
}

struct NavigationBack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBack()
    }
}
