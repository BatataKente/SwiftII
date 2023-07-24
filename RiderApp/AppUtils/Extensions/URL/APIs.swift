//
//  APIs.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import Foundation

extension URL {
    static var mockApi: URL? {
        return URL(string: "https://64bd445f2320b36433c78d2c.mockapi.io/all")
    }
    static func mockApi(id: Int) -> URL? {
        return URL(string: "https://64bd445f2320b36433c78d2c.mockapi.io/all/\(id)")
    }
    static var randomWordApiWord: URL? {
        return URL(string: "https://random-word-api.herokuapp.com/word")
    }
    static func randomWordApiWords(_ numberOfWords: Int = 0) -> URL? {
        return URL(string: "https://random-word-api.herokuapp.com/word?number=\(numberOfWords)")
    }
    static var randomWordApiAll: URL? {
        return URL(string: "https://random-word-api.herokuapp.com/all")
    }
    static func randomWordApi(_ endPoint: String = "") -> URL? {
        return URL(string: "https://random-word-api.herokuapp.com/\(endPoint)")
    }
}
