//
//  ServicesHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/19/22.
//

import Foundation

class ServicesHelper {
    
    
    static func filterOutNil(productData: [NewProduct]) -> [NewProduct] {
        var result = [NewProduct]()
        
        for x in productData {
            
            guard x.id >= 0 else {
                continue
            }
            
            guard !x.name.isEmpty else {
                continue
            }
            
            guard !x.category.isEmpty else {
                continue
            }
            
            guard x.price > 0 else {
                continue
            }
            
            guard !x.cartIMG.isEmpty else {
                continue
            }
            
            guard !x.productIMG.isEmpty else {
                continue
            }
            
            guard !x.features.isEmpty else {
                continue
            }
            
            guard !x.contents.isEmpty else {
                continue
            }
            
            guard !x.previews.isEmpty else {
                continue
            }
            
            guard !x.recommended.isEmpty else {
                continue
            }
            
            result.append(x)
        }
        
        return result
    }
    
}
