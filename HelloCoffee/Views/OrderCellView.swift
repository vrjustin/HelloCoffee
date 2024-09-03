//
//  OrderCellView.swift
//  HelloCoffee
//
//  Created by Justin Maronde on 9/3/24.
//

import SwiftUI

struct OrderCellView: View {
    let order: Order
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(order.name)
                Text("\(order.coffeeName) (\(order.size.rawValue))")
                    .accessibilityIdentifier("coffeeNameAndSizeText")
                    .opacity(0.5)
            }
            Spacer()
            Text(order.total as NSNumber, formatter: NumberFormatter.currency)
        }
    }
}
