//
//  DetailFilmViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 11/1/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class DetailFilmViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }

    // MARK: - Action
    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
