//
//  CreateButton.swift
//  RiderApp
//
//  Created by J on 24/07/23.
//

import UIKit

extension Create {
    class CapsuleButton: UIButton {
        init() {
            super.init(frame: .zero)
            configuration = .plain()
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        func setStyleBordered() {
            configuration = .bordered()
            configuration?.baseForegroundColor = .black
            configuration?.baseBackgroundColor = .white
            configuration?.background.strokeWidth = 1
            configuration?.background.strokeColor = .black
        }
        func setStyleFilled() {
            configuration = .filled()
            configuration?.baseBackgroundColor = .systemBlue
        }
        func setStyleRadioButton() {
            configuration = .filled()
            configuration?.baseBackgroundColor = UIColor(white: 0, alpha: 0.2)
            configuration?.cornerStyle = .capsule
        }
        func setStyleRadioButtonSelected() {
            configuration = .filled()
            configuration?.baseBackgroundColor = .cyan
            configuration?.background.strokeWidth = 2
            configuration?.background.strokeColor = .blue
            configuration?.cornerStyle = .capsule
        }
        func setTitle(_ title: String? = nil) {
            configuration?.attributedTitle = AttributedString(title ?? "")
            configuration?.attributedTitle?.setAttributes(
                AttributeContainer([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20)])
            )
            configuration?.cornerStyle = .capsule
        }
    }
}
