//
//  CommentSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentSVC: View {
    @EnvironmentObject var commentsManager: CommentsManager
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var ordersManager: OrdersManager
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var titleText: String = ""
    @State var bodyText: String = ""
    @State var showAlert = false
    
    var product: NewProduct?
    
    var body: some View {
        VStack {
            NavigationBack()
            NavigationBar()
                .environmentObject(cartManager)
                .environmentObject(ordersManager)
            VStack(alignment: .leading) {
                Text("Title")
                TextField("Enter title here", text: $titleText)
                Text("Body")
                TextField("Enter body text here", text: $bodyText)
                Spacer()
                Button {
                    let newComment = CommentModel(commentID: UUID().uuidString, productID: product!.id, username: "Rando", title: titleText, date: Date(), body: bodyText)
                    if (CommentViewModel.commentValidation(commentObj: newComment)) {
                        commentsManager.addComment(commentObj: newComment)
                        CDCommentHelper.cdCommentHelper.addComment(commentObj: newComment)
                        self.presentationMode.wrappedValue.dismiss()
                    } else {
                        showAlert = true
                    }
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
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Notification"), message: Text("Please fill in all fields before continuing"), dismissButton: .default(Text("Dismiss")))
        }
        
    }
}
