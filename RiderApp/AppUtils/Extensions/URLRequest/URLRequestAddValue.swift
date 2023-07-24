//
//  URLRequest.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import Foundation

extension URLRequest {
    mutating func addValue() {
        addValue("application/json", forHTTPHeaderField: "Content-Type")
    }
}
