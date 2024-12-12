//
//  ContentView.swift
//  SwiftConcurrencyDemo
//
//  Created by Ramar Parham on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CounterViewModel()

    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
                .font(.largeTitle)
            Button("Increment Concurrently") {
                viewModel.increment()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

