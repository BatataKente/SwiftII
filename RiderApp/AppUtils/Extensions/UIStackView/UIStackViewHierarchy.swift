//
//  UIStackViewHierarchy.swift
//  RiderApp
//
//  Created by J on 24/07/23.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach({addArrangedSubview($0)})
    }
}
