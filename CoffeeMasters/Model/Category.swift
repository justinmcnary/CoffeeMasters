//
//  Category.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/16/23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
