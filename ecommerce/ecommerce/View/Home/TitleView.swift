//
//  TitleView.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .padding(.horizontal)
        .padding(.top)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Electronics")
            .previewLayout(.sizeThatFits)
            
    }
}
