//
//  Badge.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/20/22.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.red)
                .frame(width: 20, height: 20)
            Text("13")
                .font(.caption)
                .foregroundColor(Color.white)
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
