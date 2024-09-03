//
//  NumberFormatter+Extensions.swift
//  HelloCoffee
//
//  Created by Justin Maronde on 9/3/24.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
