//
//  Shop.swift
//  Touchdown
//
//  Created by e.mogilevich on 7/12/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
