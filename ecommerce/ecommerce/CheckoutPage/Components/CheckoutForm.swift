//
//  CheckoutForm.swift
//  ecommerce
//
//  Created by Vincent Salinas on 6/30/22.
//

import SwiftUI

struct CheckoutForm: View {
    @EnvironmentObject var cartManager: CartManager
    
    @State var name = ""
    @State var email = ""
    @State var phoneNumber = ""
    
    @State var address = ""
    @State var zip = ""
    @State var city = ""
    @State var country = ""
    
    let columns: [GridItem] = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("CHECKOUT")
                .font(.title)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("BILLING DETAILS")
                        .foregroundColor(.red)
                        .padding([.top], 15)
                        .padding([.bottom], 10)
                    CheckoutField(title: "Name", placeholder: "Enter name here", value: $name)
                    CheckoutField(title: "Email", placeholder: "Enter name email", value: $email)
                    CheckoutField(title: "Phone Number", placeholder: "+1202-555-0136", value: $phoneNumber)
                    
                    Text("SHIPPING INFO")
                        .foregroundColor(.red)
                        .padding([.top], 30)
                        .padding([.bottom], 10)
                    CheckoutField(title: "Your Address", placeholder: "1137 Williams Avenue", value: $address)
                    CheckoutField(title: "ZIP Code", placeholder: "10001", value: $zip)
                    CheckoutField(title: "City", placeholder: "New York", value: $city)
                    CheckoutField(title: "Country", placeholder: "United States", value: $country)
                    
                    CheckoutSummary()
                        .padding([.top], 30)
                        .environmentObject(cartManager)
                }
                
            }
            
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
