//
//  Order.swift
//  HelloCoffee
//
//  Created by Justin Maronde on 9/3/24.
//

import Foundation

enum CoffeeSize: String, Codable, CaseIterable {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
}

struct Order: Codable, Identifiable, Hashable {
    
    var name: String
    var coffeeName: String
    var total: Double
    var size: CoffeeSize
    var id: Int?
    
}
