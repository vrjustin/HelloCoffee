//
//  String+Extensions.swift
//  HelloCoffee
//
//  Created by Justin Maronde on 9/4/24.
//

import Foundation

extension String {
    
    var isNumeric: Bool {
        Double(self) != nil
    }
    
    func isLessThan(_ number: Double) -> Bool {
        if !self.isNumeric {
            return false
        }
        guard let value = Double(self) else {return false}
        return value < number
    }
}
