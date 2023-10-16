//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/16/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
