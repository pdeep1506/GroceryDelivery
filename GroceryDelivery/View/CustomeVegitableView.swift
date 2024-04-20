//
//  CustomeVegitableView.swift
//  GroceryDelivery
//
//  Created by Deep Patel on 2024-04-26.
//

import SwiftUI

struct CustomeVegitableView: View {
    let name: String
    let price: Double
    
    @State private var count : Int  = 1
    var body: some View {
        
        VStack{
            
            VStack{
                Image(name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 180)
            
                
                Text("$\(price.formatted() )")
                    .font(.title2)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Text("\(name)")
                    .font(.title)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                HStack{
                    Text(" \(count) Kg")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        
                    Spacer()
                    Button(action: {
                       count = count + 1
                    }, label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .foregroundColor(.black)
                          
                            .scaledToFit()
                            
                    })
                    
                    
                } // : HStack
                .padding(8)
                
            }
            
            .frame(width: 180, height: 300)
            .background(Color("CremeColor"))
            .cornerRadius(12)
            .padding(.trailing, 8)
            
        } //: VStack
      
    } // : Vstack
        
}

#Preview {
    CustomeVegitableView(name: vegitables[0].name, price: vegitables[0].price)
        
}
