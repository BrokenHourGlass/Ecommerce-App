//
//  NavigationBarView.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack{
            Button(action:{}, label: {
               
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        
                    .foregroundColor(.white)
                    
                
            }) // end of button 1
            Spacer()
            
            //LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.white)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 15, alignment: .center)
                        .offset(x:13, y: -10)
                }
            }) // end of button 2
            
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
