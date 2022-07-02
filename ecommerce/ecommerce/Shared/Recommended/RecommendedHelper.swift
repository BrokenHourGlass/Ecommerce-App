//
//  RecommendedHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct RecommendedHelper: View {
    var product: Product
    
    var body: some View {
        VStack(spacing: 30) {
            Text("YOU MAY ALSO LIKE")
                .font(.title2)
                .bold()
            VStack(spacing: 50) {
                RecommendedItemHelper(recommended: product.recommended[0])
                RecommendedItemHelper(recommended: product.recommended[1])
                RecommendedItemHelper(recommended: product.recommended[2])
            }
        }
    }
}

struct RecommendedHelper_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedHelper(product: ModelData().products[0])
    }
}
