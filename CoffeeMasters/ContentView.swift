//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Justin Mc Nary on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            Text("Hello \(name)")
            
        }
    }
}

#Preview {
    ContentView()
}
