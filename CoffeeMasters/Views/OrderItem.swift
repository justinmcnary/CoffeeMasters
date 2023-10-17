//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/16/23.
//

import SwiftUI

struct OrderItem: View {
    
    var item:(Product, Int)
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("Secondary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

#Preview {
    OrderItem(item:( Product(id: 44, name: "TestProd", price: 1.25), 1)).environmentObject(CartManager()).padding()
}
