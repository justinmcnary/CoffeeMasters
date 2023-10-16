//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/16/23.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsPage(product: product)
                        } label: {
                            Item(product: product)
                        }
                    }
                }
            }.navigationTitle("Products")
        })
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager())
}
