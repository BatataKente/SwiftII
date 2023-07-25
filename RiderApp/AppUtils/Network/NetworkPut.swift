//
//  NetworkPut.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import Foundation
import Alamofire

extension Network {
    func put<T: Codable>(_ model: T, from url: URL?) async -> Result? {
        guard let url = url else {fatalError("Wrong url")}
        let request = {(data: Data) -> URLRequest in
            var request = URLRequest(url: url)
            request.httpMethod = .put
            request.addValue()
            request.httpBody = data
            return request
        }
        do {
            let (data, response) = try await URLSession.shared.data(
                for: request(try JSONEncoder().encode(model))
            )
            return Result(data: data, response: "\(response)")
        } catch {fatalError("\(error)")}
    }
}
