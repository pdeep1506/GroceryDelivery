//
//  CodableBundleExtension.swift
//  GroceryDelivery
//
//  Created by Deep Patel on 2024-04-20.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T{
        
        //. 1. Locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError(" Fail to locate \(file) in bundle.")
        }
        
        // 2. Create a Property for data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Fail to load \(file) in bundle.")
        }
        
        //3. decoder
        let decoder = JSONDecoder()
        
        //4. property of decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Fail to decode \(file) in bundle")
        }
        
        return decodedData
        
    }
}
