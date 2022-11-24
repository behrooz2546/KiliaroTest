//
//  task.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Foundation

typealias FoundationTask = Task

extension FoundationTask where Success == Never, Failure == Never {
    static func sleep(seconds: Double) async throws {
        let duration = UInt64(seconds * 1_000_000_000)
        try await Task.sleep(nanoseconds: duration)
    }
}
