//
//  NavigationBar2.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct NavigationBar2: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backBTN: some View {
        Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                Text("Back")
            }
        }
    }
    
    var body: some View {
        HStack {
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backBTN)
    }
}

struct NavigationBar2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar2()
    }
}
