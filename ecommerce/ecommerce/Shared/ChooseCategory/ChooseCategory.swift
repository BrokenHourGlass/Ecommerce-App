//
//  ChooseCategory.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct ChooseCategory: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    
    @State var showNextView = false
    @State var chosenCategory = ""
    
    var body: some View {
        VStack(spacing: 15) {
            Text("OTHER PRODUCTS")
                .font(.title2)
                .bold()
                .padding([.bottom], 15)
            NavigationLink(destination: CategorySVC(category: chosenCategory).environmentObject(cartManager).environmentObject(historyManager).environmentObject(ordersManager).environmentObject(commentsManager), isActive: $showNextView) {
                EmptyView()
            }
            ChooseCategoryHelper(showNextView: $showNextView, chosenCategory: $chosenCategory, category: "HEADPHONES", img: "shared/image-xx99-mark-one-headphones")
            ChooseCategoryHelper(showNextView: $showNextView, chosenCategory: $chosenCategory, category: "SPEAKERS", img: "shared/image-zx9-speaker")
            ChooseCategoryHelper(showNextView: $showNextView, chosenCategory: $chosenCategory, category: "EARPHONES", img: "product-yx1-earphones/image-category-page-preview")
        }
        .frame(width: 200)
        .padding([.top], 30)
    }
}

struct ChooseCategory_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCategory()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
    }
}
