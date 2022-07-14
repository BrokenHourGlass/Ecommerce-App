//
//  HomePage2SVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePage2SVC: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var historyManager: HistoryManager
    @EnvironmentObject var ordersManager: OrdersManager
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var wishlistManager: WishlistManager
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            ScrollView {
                SignupModal()
                HomePageHero()
                HomePageFeatured(fgColor: Color.white, bgColor: Color.blue)
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                HomePageAd(img: "home/pexels-jessica-lewis-creative-593324")
                HomePageCategories(title: "Up to 20% off marked laptops!", description: "Big savings on tech setups, plus free shipping", fgColor: Color.black, bgColor: Color.white)
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                HomePageAd(img: "home/pexels-karol-d-325153")
                HomePageCategories(title: "Today's Deals", description: "All with free shipping", fgColor: Color.white, bgColor: Color.pink)
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                HomePageAd(img: "home/pexels-pixabay-414548")
                HomePageCategories(title: "Make your workstation summer ready!", description: "Check out all the latest gear", fgColor: Color.black, bgColor: Color.white)
                    .environmentObject(cartManager)
                    .environmentObject(historyManager)
                    .environmentObject(ordersManager)
                    .environmentObject(commentsManager)
                    .environmentObject(wishlistManager)
                FooterHelper()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct HomePage2SVC_Previews: PreviewProvider {
    static var previews: some View {
        HomePage2SVC()
            .environmentObject(CartManager())
            .environmentObject(HistoryManager())
            .environmentObject(OrdersManager())
            .environmentObject(CommentsManager())
            .environmentObject(WishlistManager())
    }
}
