//
//  TopHeaderView.swift
//  GroceryDelivery
//
//  Created by Deep Patel on 2024-04-26.
//

import SwiftUI

struct TopHeaderView: View {
    var body: some View {
        HStack(){
            
            Button(action: {
                 print("Pressed on back button")
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            
            Spacer()
            
            Button(action: {
                 print("Pressed on filter button")
            }, label: {
                Image(systemName: "line.horizontal.3.decrease")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Button(action: {
                 print("Pressed on search button")
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
                
        }
    }
}

#Preview {
    TopHeaderView()
}
