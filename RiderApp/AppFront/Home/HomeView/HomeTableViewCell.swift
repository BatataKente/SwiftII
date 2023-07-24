//
//  TableViewCell.swift
//  RiderApp
//
//  Created by J on 20/07/23.
//

import UIKit

final class HomeTableViewCell: UITableViewCell {
    private struct Container {
        let label: UILabel
        let radioButton: Create.CapsuleButton
        let view: UIStackView
    }
    private let stack: Container = {
        let label = UILabel()
        let radioButton = Create.CapsuleButton()
        radioButton.setStyleRadioButton()
        let view = UIView()
        view.addSubview(radioButton)
        radioButton.enableAutoLayout
            .constraint(attributes: [.leading, .centerY])
            .constraint(attribute: .height, multiplier: 0.6)
            .constraint(attribute: .width, to: radioButton, by: .height)
        let stackView = UIStackView(arrangedSubviews: [view, label])
        label.enableAutoLayout.constraint(attribute: .width, multiplier: 0.8)
        return Container(label: label, radioButton: radioButton, view: stackView)
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        refreshBackgroundColor()
        addSubviews([stack.view])
        stack.view.enableAutoLayout.constraint(attributes: [.top, .leading, .trailing, .bottom])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            stack.radioButton.setStyleRadioButtonSelected()
        } else {
            stack.radioButton.setStyleRadioButton()
        }
    }
    func setup(_ word: String) {
        stack.label.text = word
    }
    func refreshBackgroundColor(_ color: UIColor = .clear) {
        backgroundColor = color
    }
}
