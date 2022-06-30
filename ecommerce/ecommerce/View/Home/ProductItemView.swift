//
//  ProductItemView.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import SwiftUI

struct ProductItemView: View {
    var body: some View {
        
    
        
        
        VStack(alignment: .leading, spacing: 6, content: {
            //photo
            ZStack{
                Image("headphone")
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }// zstack
            .background(Color(red: 10, green: 10, blue: 10))
            .cornerRadius(12)
            
            //name
            Text("beats")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            //price
            Text("$400")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView()
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            
    }
}
