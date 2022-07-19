//
//  AltTabController.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/19/22.
//

import SwiftUI

struct AltTabController: View {
    var body: some View {
        HStack {
            AltTabControllerTab(systemIMG: "house.fill", tabName: "Home")
            Spacer()
            AltTabControllerTab(systemIMG: "magnifyingglass", tabName: "Catalog")
            Spacer()
            AltTabControllerTab(systemIMG: "person.fill", tabName: "History")
            Spacer()
            AltTabControllerTab(systemIMG: "list.bullet.rectangle.fill", tabName: "Orders")
            Spacer()
            AltTabControllerTab(systemIMG: "star.fill", tabName: "Wish List")
        }
        .padding(.horizontal, 22)
        .padding([.top], 8)
        .padding([.bottom], 3)
        .background(Color.altNavigationBar)
    }
}

struct AltTabController_Previews: PreviewProvider {
    static var previews: some View {
        AltTabController()
    }
}
