//
//  UIViewGetScreenSize.swift
//  RiderApp
//
//  Created by J on 24/07/23.
//

import UIKit

extension UIView {
    func getGreaterSide() -> CGFloat {
        if (UIScreen.main.bounds.height > UIScreen.main.bounds.width) {return UIScreen.main.bounds.height}
        return UIScreen.main.bounds.width
    }
    func getSmallerSide() -> CGFloat {
        if (UIScreen.main.bounds.height > UIScreen.main.bounds.width) {return UIScreen.main.bounds.width}
        return UIScreen.main.bounds.height
    }
    var screen: CGRect {
        CGRect(origin: UIScreen.main.bounds.origin, size: CGSize(width: getSmallerSide(), height: getGreaterSide()))
    }
}
