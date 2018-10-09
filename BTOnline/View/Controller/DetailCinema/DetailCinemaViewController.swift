//
//  DetailCinemaViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/4/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class DetailCinemaViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
