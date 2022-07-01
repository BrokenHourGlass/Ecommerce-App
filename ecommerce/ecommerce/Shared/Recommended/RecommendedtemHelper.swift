//
//  RecommendedItemHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/1/22.
//

import SwiftUI

struct RecommendedItemHelper: View {
    var recommended: Recommended
    
    var body: some View {
        VStack {
            recommended.img.img.resizable()
                .frame(width: 200, height: 200)
            Text(recommended.name)
                .font(.title2)
                .bold()
            ButtonA(title: "SEE PRODUCT")
        }
        .frame(width: 250)
    }
}

struct RecommendedItemHelper_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedItemHelper(recommended: ModelData().products[0].recommended[0])
    }
}
