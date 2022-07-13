//
//  HomePageCarousel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

//struct HomePageCarousel: View {
//    @EnvironmentObject var cartManager: CartManager
//
//    let categories = ["COMPUTERS", "PHONES", "EARPHONES", "HEADPHONES", "SPEAKERS"]
//    let rows: [GridItem] = [GridItem(.flexible())]
//
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHStack(spacing: 15) {
//                ForEach(0..<categories.count) { index in
//                    NavigationLink(destination: CategorySVC().environmentObject(cartManager).navigationTitle("").navigationBarHidden(true)) {
//                        Text(categories[index])
//                            .padding([.top, .bottom], 8)
//                            .padding([.leading, .trailing], 12)
//                            .foregroundColor(Color.blue)
//                            .overlay(
//                                Capsule(style: .continuous)
//                                    .stroke(Color.blue, lineWidth: 2)
//                            )
//                    }
//                }
//            }
//        }
//        .padding([.leading], 14)
//        .frame(height: 50)
//    }
//}
//
//struct HomePageCarousel_Previews: PreviewProvider {
//    static var previews: some View {
//        HomePageCarousel()
//            .environmentObject(CartManager())
//    }
//}
