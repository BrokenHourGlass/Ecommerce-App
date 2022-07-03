//
//  CollectionView.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import SwiftUI

struct Item: Identifiable{
    
    let id = UUID()
    let title: String
    let image: String
    
}


struct CollectionView: View {
    
    let items = [
        Item(title: "Cellphone", image: "cellphones"),
        Item(title: "Laptops", image: "laptops"),
        Item(title: "Monitors", image: "Monitors"),
        Item(title: "HeadPhones", image: "head"),
        Item(title: "Keyboards", image: "keyboards"),
        Item(title: "Video game Systesm", image: "games")]
    
    let spacing: CGFloat = 10
    @State private var numberofRows = 1
    
    var body: some View {
        let columns = Array(
            repeating: GridItem(.flexible(), spacing:spacing), count: numberofRows)
        
        ScrollView{
            LazyVGrid(columns: columns, spacing: spacing){
                ForEach(items){ Item in
                    ItemView(item: Item)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        
        
    }
    
}
struct ItemView: View{
    let item: Item
    
    var body: some View{
        GeometryReader{ reader in
            VStack(spacing: 5){
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                
                Text(item.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.9))
                
            }
            .frame(width: reader.size.width, height: reader.size.height)
            .background(Color.white)
        }
        .frame(height: 150)
        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}