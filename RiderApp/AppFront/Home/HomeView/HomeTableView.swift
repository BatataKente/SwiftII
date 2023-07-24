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
        backgroundColor = .clear
        delegate = self
        dataSource = self
        translatesAutoresizingMaskIntoConstraints = false
        register(
            HomeTableViewCell.self,
            forCellReuseIdentifier: "\(HomeTableViewCell.self)"
        )
        HomeViewModel.shared.delegate = self
        HomeViewModel.shared.setWords
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HomeViewModel.shared.getWordsCount
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "\(HomeTableViewCell.self)",
            for: indexPath
        ) as? HomeTableViewCell ?? HomeTableViewCell()
        cell.setup(HomeViewModel.shared.getWords[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

extension HomeTableView: HomeViewModelDelegate {
    func refreshTableView() {
        Task{reloadData()}
    }
}
