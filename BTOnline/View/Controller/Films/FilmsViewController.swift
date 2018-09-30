//
//  FilmsViewController.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 9/29/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import Parchment

class FilmsViewController: BaseViewController {

    // MARK: - Properties
    let viewControllers = [NowShowingViewController(), TodayViewController(), ComingSoonViewController()]

    override func setupData() {

    }

    override func setupUI() {
        navigationController?.navigationBar.isHidden = true
        configParchment()
    }

    private func configParchment() {
        let pagingViewController = FixedPagingViewController(viewControllers: viewControllers)
        addChildViewController(pagingViewController)
        view.addSubview(pagingViewController.view)
        view.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
    }
}
