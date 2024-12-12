//
//  CounterViewModel.swift
//  SwiftConcurrencyDemo
//
//  Created by Ramar Parham on 12/11/24.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var counter = 0

    func increment() {
        Task {
            counter += 1
        }
    }
}
