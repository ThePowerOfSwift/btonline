//
//  DetailFilmViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 11/1/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class DetailFilmViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
    }

    // MARK: - Action
    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        tabBarController?.tabBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }

    @IBAction func commentButtonTouchUpInside(_ sender: Any) {
        let vc = CommentViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func getTicketsButtonTouchUpInside(_ sender: Any) {
    }
}
