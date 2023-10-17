//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

#Preview {
    ContentView().environmentObject(CartManager())
}
