//
//  Item.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/16/23.
//

import SwiftUI

struct Item: View {
    var product: Product
    var body: some View {
        VStack{
            AsyncImage(url: product.imageURL)
                   .frame(width: 300, height: 150)
                   .background(Color("AccentColor"))
               HStack {
                   VStack(alignment: .leading) {
                       Text(product.name)
                           .font(.title3)
                           .bold()
                       Text("$ \(product.price)")
                           .font(.caption)

                   }.padding(8)
                   Spacer()
               }
           }
           .background(Color("SurfaceBackground"))
           .cornerRadius(10)
           .padding(.trailing)
    }
}

#Preview {
    Item(product: Product(id: 1, name: "DummyProduct", description: "", price: 1.25, image: ""))
}
