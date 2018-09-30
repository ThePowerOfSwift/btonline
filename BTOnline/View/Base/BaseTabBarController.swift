//
//  BaseTabBarController.swift
//  MyApp
//
//  Created by PCM0023 on 7/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.tabBar.tintColor = App.Color.tabBarTintColor
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.border(color: UIColor.clear, width: 0)
    }
}
