//
//  CommentPageSVC.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import SwiftUI

struct CommentsPageSVC: View {
    @EnvironmentObject var commentsManager: CommentsManager
    
    @State var showNextView = false
    
//    var comments = CDCommentHelper.cdCommentHelper.getComments()
    var product: NewProduct?
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBack()
            NavigationLink(destination: CommentSVC(product: product).environmentObject(commentsManager), isActive: $showNextView) {
                EmptyView()
            }
            HStack {
                Text("Comments")
                    .font(.title)
                    .bold()
                Spacer()
                Button {
                    showNextView = true
                } label: {
                    Image(systemName: "plus")
                }
                .padding([.top, .bottom, .leading, .trailing], 10)
                .foregroundColor(Color.white)
                .background(Color.accentColor)
                .cornerRadius(10)
            }
            ScrollView {
                ForEach(CDCommentHelper.cdCommentHelper.getComments(productID: product!.id).reversed(), id: \.commentID) { comment in
                    CommentItem(comment: comment)
                }
            }
            Spacer()
        }
        .onAppear(perform: {
            commentsManager.loadComments(commentsData: CDCommentHelper.cdCommentHelper.getComments(productID: product!.id))
        })
        .padding()
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

//struct CommentsPageSVC_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentsPageSVC(product: NewProduct(id: <#T##Int#>, name: <#T##String#>, category: <#T##String#>, new: <#T##Bool#>, price: <#T##Int#>, featured: <#T##Bool#>, cartIMG: <#T##String#>, productIMG: <#T##String#>, description: <#T##String#>, features: <#T##String#>, contents: <#T##[NewItem]#>, previews: <#T##[NewPreview]#>, recommended: <#T##[NewRecommended]#>))
//    }
//}
