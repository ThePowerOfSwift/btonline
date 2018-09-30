//
//  NowShowingViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 9/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class NowShowingViewController: BaseViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Now Showing"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setupUI() {
        self.title = "ABC"
    }

}
