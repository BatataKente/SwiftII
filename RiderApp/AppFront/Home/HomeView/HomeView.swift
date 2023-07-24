//
//  View.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

final class HomeView: UIView {
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Selecione seu cupom:"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
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
        backgroundColor = .white
        addSubviews([infoLabel, tableView, stackView])
        infoLabel.enableAutoLayout
            .constraint(attributes: [.leading, .trailing], to: tableView)
            .constraint(attribute: .top, to: safeAreaLayoutGuide, constant: screen.height*0.025)
        tableView.enableAutoLayout
            .constraint(attributes: [.centerX, .centerY])
            .constraint(attribute: .height, by: .height, multiplier: 0.5)
            .constraint(attribute: .width, by: .width, multiplier: 0.7)
        stackView.enableAutoLayout
            .constraint(attributes: [.centerX, .width])
            .constraint(attribute: .bottom, to: safeAreaLayoutGuide, constant: -screen.height*0.05)
    }
}
