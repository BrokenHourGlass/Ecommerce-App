

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 0){
            NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.black)
                    
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0){
                        
                        TitleView(title: "Electronics")
                        CollectionView()
                    
                        
                       
                        
                    }
                })
            }//vstack end
        } //zstack end
        
       
}// body end

}//struct end
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    
    }
}
