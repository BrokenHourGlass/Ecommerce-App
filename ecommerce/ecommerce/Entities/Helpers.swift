//
//  Helpers.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/7/22.
//

import Foundation

func addSearchItem(product: NewProduct) {
    CDHistoryHelper.cdHistoryHelper.addProduct(productObj: product)
    
    for x in product.contents {
        CDHistoryHelper.cdHistoryHelper.addItem(pid: product.id, itemObj: x)
    }
    
    for x in product.previews {
        CDHistoryHelper.cdHistoryHelper.addPreview(pid: product.id, previewObj: x)
    }
    
    for x in product.recommended {
        CDHistoryHelper.cdHistoryHelper.addRecommended(pid: product.id, recommendedObj: x)
    }
}
