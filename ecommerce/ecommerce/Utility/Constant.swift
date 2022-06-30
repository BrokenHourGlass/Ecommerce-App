//
//  Constant.swift
//  ecommerce
//
//  Created by Liban Abdinur on 6/30/22.
//

import Foundation
import SwiftUI

//Data

let colomnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
let temp = ["beats1", "beats2", "beats3", "beats4","beats5", "beats6", "beats7", "beats8", "beats9", "beats10"]

var gridLayout : [GridItem]{
    return Array (repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
