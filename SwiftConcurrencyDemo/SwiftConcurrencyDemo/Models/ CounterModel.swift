//
//   CounterModel.swift
//  SwiftConcurrencyDemo
//
//  Created by Ramar Parham on 12/11/24.
//

import Foundation

class CounterModel: ObservableObject {
    @Published var counter = 0

    func increment() {
        Task {
            await MainActor.run {
                counter += 1
            }
        }
    }
}
