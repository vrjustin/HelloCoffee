//
//  ContentView.swift
//  HelloCoffee
//
//  Created by Justin Maronde on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var model: CoffeeModel
    @State private var isPresented: Bool = false
    
    private func populateOrders() async {
        do {
            try await model.populateOrders()
        } catch {
            print(error)
        }
    }

    var body: some View {
        NavigationStack {
            VStack {
                if model.orders.isEmpty {
                    Text("No orders available!").accessibilityIdentifier("noOrdersText")
                } else {
                    List(model.orders) { order in
                        OrderCellView(order: order)
                    }
                }
            }.task {
                await populateOrders()
            }
            .sheet(isPresented: $isPresented, content: {
                AddCoffeeView()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add New Order") {
                        isPresented = true
                    }.accessibilityIdentifier("addNewOrderButton")
                }
            }
        }
    }
}

#Preview {
    var config = Configuration()
    return ContentView().environmentObject(CoffeeModel(webservice: Webservice(baseURL: config.environment.baseURL)))
}
