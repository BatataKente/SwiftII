//
//  StackView.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

final class HomeStackView: UIStackView {
    private let leftButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        return button
    }()
    private let rightButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        return button
    }()
    init() {
        super.init(frame: .zero)
        backgroundColor = UIColor(white: 0, alpha: 0.2)
        translatesAutoresizingMaskIntoConstraints = false
        addArrangedSubview(leftButton)
        addArrangedSubview(rightButton)
        [
            leftButton.widthAnchor.constraint(equalToConstant: 50),
            leftButton.heightAnchor.constraint(equalToConstant: 50),
            rightButton.widthAnchor.constraint(equalToConstant: 50),
            rightButton.heightAnchor.constraint(equalToConstant: 50)
        ].forEach({$0.isActive = true})
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
