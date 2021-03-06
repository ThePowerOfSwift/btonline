//
//  UIViewExt.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 9/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import SwiftUtils

extension UIView {

    func constrainToEdges(_ subview: UIView) {

        subview.translatesAutoresizingMaskIntoConstraints = false

        var topContraint = NSLayoutConstraint()

        if iPhoneX {
            topContraint = NSLayoutConstraint(
                item: subview,
                attribute: .top,
                relatedBy: .equal,
                toItem: self,
                attribute: .top,
                multiplier: 1.0,
                constant: 30)
        } else {
            topContraint = NSLayoutConstraint(
                item: subview,
                attribute: .top,
                relatedBy: .equal,
                toItem: self,
                attribute: .top,
                multiplier: 1.0,
                constant: 20)
        }

        let bottomConstraint = NSLayoutConstraint(
            item: subview,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: self,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 0)

        let leadingContraint = NSLayoutConstraint(
            item: subview,
            attribute: .leading,
            relatedBy: .equal,
            toItem: self,
            attribute: .leading,
            multiplier: 1.0,
            constant: 0)

        let trailingContraint = NSLayoutConstraint(
            item: subview,
            attribute: .trailing,
            relatedBy: .equal,
            toItem: self,
            attribute: .trailing,
            multiplier: 1.0,
            constant: 0)

        addConstraints([
            topContraint,
            bottomConstraint,
            leadingContraint,
            trailingContraint])
    }
}
