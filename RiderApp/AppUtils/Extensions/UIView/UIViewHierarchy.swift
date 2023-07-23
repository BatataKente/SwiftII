//
//  UIViewHierarchy.swift
//  RiderApp
//
//  Created by J on 22/07/23.
//

import UIKit

extension UIView {
    func subviews<T>(ofType: T.Type) -> T? {
        for subview in subviews where (subview as? T) != nil {
            return subview as? T
        }
        return nil
    }
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
    func removeSubviews<T>(ofType: T.Type) {
        for subview in subviews where (subview as? T) != nil {
            subview.removeFromSuperview()
        }
    }
    func removeSubviews() {
        for subview in subviews {
            subview.removeFromSuperview()
        }
    }
}
