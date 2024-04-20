//
//  ContentView.swift
//  GroceryDelivery
//
//  Created by Deep Patel on 2024-04-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:0) {
            
            TopHeaderView()
                Spacer()
            
            CustomeHeaderView()
                .frame(maxWidth: .infinity, alignment: .leading)

            
            
            Spacer()
            ScrollView {
                       LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                           ForEach(vegitables) { vegetable in
                               CustomeVegitableView(name: vegetable.name, price: vegetable.price)
                                   .aspectRatio(contentMode: .fit)
                                   .padding(3) // Padding between grid cells
                           }
                       }
                       .padding(.horizontal, 8)
                       .padding(.vertical,1)
                   }
               }
      
            
        
    }
}

#Preview {
    ContentView()
}
