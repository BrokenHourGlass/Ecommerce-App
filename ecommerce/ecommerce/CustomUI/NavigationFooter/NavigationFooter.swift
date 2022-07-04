//
//  NavigationFooter.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct NavigationFooter: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                HStack {
                    Image(systemName: "chevron.backward")
                        .aspectRatio(contentMode: .fit)
                }
            }
            Spacer()
            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                HStack {
                    Image(systemName: "chevron.forward")
                        .aspectRatio(contentMode: .fit)
                }
            }
            
        }
        .padding([.leading, .trailing], 24)
        .padding([.top, .bottom], 27)
    }
}

struct NavigationFooter_Previews: PreviewProvider {
    static var previews: some View {
        NavigationFooter()
    }
}
