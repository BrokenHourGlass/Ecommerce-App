//
//  NavigationBar.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
            }
            Spacer()
            Text("Amazona")
                .foregroundColor(.white)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "cart")
            }
        }
        .padding([.leading, .trailing], 27)
        .padding([.top, .bottom], 20)
        .background(Color.black)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
