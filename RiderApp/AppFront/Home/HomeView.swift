//
//  View.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

final class HomeView: UIView {
    private let tableView = HomeTableView()
    private let stackView = HomeStackView()
    init() {
        super.init(frame: .zero)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setup() {
        backgroundColor = .blue
        addSubview(tableView)
        addSubview(stackView)
        [
            tableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            tableView.centerYAnchor.constraint(equalTo: centerYAnchor),
            tableView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7),
            tableView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ].forEach({$0.isActive = true})
    }
}
