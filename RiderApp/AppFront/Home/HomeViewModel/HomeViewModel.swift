//
//  ViewModel.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func refreshTableView()
}

final class HomeViewModel {
    static var shared = HomeViewModel()
    private var words: [String]? {
        didSet {
            delegate?.refreshTableView()
        }
    }
    weak var delegate: HomeViewModelDelegate?
    var getWordsCount: Int {words?.count ?? 0}
    var getWords: [String] {words ?? []}
    var setWords: Void {
        Task {
            let alamoNetwork = AlamoNetwork()
            alamoNetwork.get(Examples.self, from: .mockApi) {
                self.words = $0.map({$0.name ?? ""})
            }
        }
    }
}
