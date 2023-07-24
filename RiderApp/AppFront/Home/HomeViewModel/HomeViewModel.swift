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
            guard let examples = await Network.shared.get(Examples.self, from: .mockApi) else {return}
            words = examples.map({$0.name ?? ""})
        }
    }
}
