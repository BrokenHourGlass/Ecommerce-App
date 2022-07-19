//
//  Services.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/18/22.
//

import Foundation

class Services: ObservableObject, Identifiable {
    @Published private(set) var productData = [NewProduct]()
    
    func getProductData() {
        let url = "https://raw.githubusercontent.com/BrokenHourGlass/Ecommerce-App/new-main/ecommerce/ecommerce/Resources/new-data.json"
        let session = URLSession.shared
        let decoder = JSONDecoder()
        self.productData = []
        guard let jsonURL = URL(string: url) else {
            fatalError("Invalid URL")
        }
        let task = session.dataTask(with: jsonURL) { data, response, error in
            if let error = error {
                fatalError(error.localizedDescription)
            }
            
            guard let responseData = try? Data(contentsOf: jsonURL) else {
                print("Error caught: Could not retrieve json data with url provided")
                return
            }
            
            guard let jsonData = try? decoder.decode([NewProduct].self, from: responseData) else {
                print("Error caught: Could not decode json data")
                return
            }
            
            
            DispatchQueue.main.async {
                self.productData = jsonData
                
                for x in self.productData {
                    print(x.name)
                }
                
            }
        }
        
        task.resume()
    }
}
