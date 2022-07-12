//
//  CommentSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentSVC: View {
    
    @State var titleText: String = ""
    @State var bodyText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
            TextField("Enter title here", text: $titleText)
            Text("Body")
            TextField("Enter body text here", text: $bodyText)
            Spacer()
            Button {
                print("Added new comment")
            } label: {
                Text("Submit")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .border(Color.red)
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.red)
        }
        .padding()
    }
}

struct CommentSVC_Previews: PreviewProvider {
    static var previews: some View {
        CommentSVC()
    }
}
