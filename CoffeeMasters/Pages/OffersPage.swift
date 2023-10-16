//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/13/23.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am-9am")
                Offer(title: "Welcome Gift", description: "25% off, on your first order")
            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
