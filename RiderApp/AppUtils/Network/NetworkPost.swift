//
//  NetworkPost.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import Foundation

extension Network {
    static func post<T: Codable>(_ model: T, from url: URL?) {
        guard let url = url else {fatalError("Wrong url")}
        let request = {(data: Data) -> URLRequest in
            var request = URLRequest(url: url)
            request.httpMethod = .post
            request.addValue()
            request.httpBody = data
            return request
        }
        do {
            let data = try JSONEncoder().encode(model)
            URLSession.shared.dataTask(with: request(data)).resume()
        } catch {fatalError("\(error)")}
    }
}
