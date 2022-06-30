//
//  CheckoutForm.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutForm: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("CHECKOUT")
                .font(.title)
            CheckoutField(title: "Name", placeholder: "Enter name here")
            CheckoutField(title: "Email", placeholder: "Enter name email")
            CheckoutField(title: "Phone Number", placeholder: "+1202-555-0136")
            
            CheckoutField(title: "Your Address", placeholder: "1137 Williams Avenue")
            CheckoutField(title: "ZIP Code", placeholder: "10001")
            CheckoutField(title: "City", placeholder: "New York")
            CheckoutField(title: "Country", placeholder: "United States")
        }
        .padding([.leading, .trailing], 27)
        .padding([.top], 20)
    }
}

struct CheckoutForm_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutForm()
    }
}
