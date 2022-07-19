//
//  AltTabControllerTab.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/19/22.
//

import SwiftUI

struct AltTabControllerTab: View {
    var systemIMG: String
    var tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemIMG)
                .resizable()
                .frame(width: 24, height: 22)
                .foregroundColor(Color.altNavigationBarTab)
            Text(tabName)
                .foregroundColor(Color.altNavigationBarTab)
                .font(.caption2)
        }
    }
}

struct AltTabControllerTab_Previews: PreviewProvider {
    static var previews: some View {
        AltTabControllerTab(systemIMG: "image", tabName: "name")
    }
}
