//
//  CustomeHeaderView.swift
//  GroceryDelivery
//
//  Created by Deep Patel on 2024-04-26.
//

import SwiftUI

struct CustomeHeaderView: View {
    var body: some View {
       
            Text("Vegitables")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
       
            
    }
}

#Preview {
    CustomeHeaderView()
}
