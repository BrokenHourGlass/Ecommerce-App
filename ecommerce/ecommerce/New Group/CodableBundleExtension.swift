//
//  CodableBundleExtension.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
      // 1.locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("failed to located \(file) in bundle")
        }
       // 2. create a property for the data
       guard let data = try? Data(contentsOf: url) else{
            fatalError("failed to load \(file) in bundle")
        }
       // 3. create a decoder
        let decoder = JSONDecoder()
      //
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            fatalError("failed to decode \(file) from bundle.")
        }
       // 5. return teh ready-to- use data
        return decodedData
    
    
        
        
    }
}

//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
