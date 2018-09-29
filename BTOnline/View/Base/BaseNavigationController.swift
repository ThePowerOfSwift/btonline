//
//  BaseNavigationController.swift
//  MyApp
//
//  Created by PCM0023 on 7/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = App.Color.navigationBarTintColor
        self.navigationBar.border(color: UIColor.clear, width: 0)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }
}
