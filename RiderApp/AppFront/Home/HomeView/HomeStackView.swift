//
//  StackView.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

final class HomeStackView: UIStackView {
    private struct Container {
        let button: UIButton
        let view: UIView
    }
    private lazy var left: Container = {
        let button = Create.CapsuleButton()
        button.setStyleBordered()
        button.setTitle("Cancelar")
        let view = UIView()
        view.addSubview(button)
        button.enableAutoLayout
            .constraint(attribute: .width, multiplier: 0.6)
            .constraint(attributes: [.top, .bottom])
            .constraint(attribute: .trailing, constant: -screen.width*0.05)
        return Container(button: button, view: view)
    }()
    private lazy var right: Container = {
        let button = Create.CapsuleButton()
        button.setStyleFilled()
        button.setTitle("Confirmar")
        let view = UIView()
        view.addSubview(button)
        button.enableAutoLayout
            .constraint(attribute: .width, multiplier: 0.6)
            .constraint(attributes: [.top, .bottom])
            .constraint(attribute: .leading, constant: screen.width*0.05)
        return Container(button: button, view: view)
    }()
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        addArrangedSubviews([left.view, right.view])
        left.view.enableAutoLayout
            .constraint(attribute: .width, multiplier: 0.5)
        right.view.enableAutoLayout
            .constraint(attribute: .width, multiplier: 0.5)
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
