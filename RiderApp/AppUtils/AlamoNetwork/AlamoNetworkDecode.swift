//
//  AlamoNetworkDecode.swift
//  RiderApp
//
//  Created by J on 24/07/23.
//

import Foundation

extension AlamoNetwork {
     func decode<T: Codable>(_ model: T.Type, from data: Data) -> T? {
        do {
            return try JSONDecoder().decode(model.self, from: data)
        } catch {fatalError("\(error): \(String(data: data, encoding: .ascii) ?? "?")")}
    }
}
