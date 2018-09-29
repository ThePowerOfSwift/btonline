//
//  UIImageExt.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 8/6/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {

    func setImage(path: String) {
        let url = URL(string: path)
        kf.indicatorType = .activity
        kf.setImage(with: url)
    }
}
