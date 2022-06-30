//
//  AddRemoveItem.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct AddRemoveItem: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "minus")
                }
                Text("2")
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct AddRemoveItem_Previews: PreviewProvider {
    static var previews: some View {
        AddRemoveItem()
    }
}
