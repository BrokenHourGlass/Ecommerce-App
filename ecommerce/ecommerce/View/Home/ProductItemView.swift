//
//  ProductItemView.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import SwiftUI

struct ProductItemView: View {
    
    //let product: Product
    let headset: HeadPHones

    
    var body: some View {
        
    
        
        
        VStack(alignment: .leading, spacing: 6, content: {
            //photo
            ZStack{
                Image(headset.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }// zstack
            .background(Color(red: 10, green: 10, blue: 10))
            .cornerRadius(12)
            
            //name
            Text(headset.name)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
//
            //price
            Text("$\(headset.formattedPrice)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(headset: headphones[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            
    }
}
