//
//  CommentViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 11/5/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class CommentViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
    }

    // MARK: - Action
    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
