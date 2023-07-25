//
//  AlamoNetworkPost.swift
//  RiderApp
//
//  Created by J on 24/07/23.
//

import Foundation
import Alamofire
 
extension AlamoNetwork {
     func post<T: Codable>(
        _ model: T, from url: URL?, escape: @escaping (Data) -> Void
    ) {
        guard let url = url else {return}
        AF.request(url, method: .post, parameters: model).responseData {
            switch $0.result {
                case .success(let data): escape(data)
                case .failure(let error): fatalError(error.errorDescription!)
            }
        }
    }
}
