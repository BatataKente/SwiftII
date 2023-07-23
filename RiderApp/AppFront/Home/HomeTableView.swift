//
//  TableView.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

final class HomeTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        backgroundColor = .green
        delegate = self
        dataSource = self
        translatesAutoresizingMaskIntoConstraints = false
        register(
            HomeTableViewCell.self,
            forCellReuseIdentifier: "\(HomeTableViewCell.self)"
        )
        Task {
            guard let word = await Network.get([String].self, from: .randomWordApi) else {return}
            print(word.first ?? "")
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "\(HomeTableViewCell.self)",
            for: indexPath
        )
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height/4
    }
}
