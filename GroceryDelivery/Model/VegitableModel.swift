//
//  VegitableModel.swift
//  GroceryDelivery
//
//  Created by Deep Patel on 2024-04-20.
//

import SwiftUI

struct Vegitable: Codable, Identifiable {
    
    let id: Int
    let name: String
    let image_url : String
    let price: Double
    let nutritional_values : NutritionalValues
}
struct NutritionalValues: Codable {
    let proteins: Double
    let fats: Double
    let carbohydrates: Double
}
