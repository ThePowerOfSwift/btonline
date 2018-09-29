//
//  ViewController.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import MVVM

class BaseViewController: UIViewController, View {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupUI()
    }

    // MARK: - setup Data & UI
    func setupData() {}

    func setupUI() { }
}
