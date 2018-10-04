//
//  NowShowingViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 9/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class NowShowingViewController: BaseViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        title = App.String.titleNowShowing
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Outlet
    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Properties
    var viewModel = NowShowingViewModel()

    override func setupUI() {
        configTableView()
    }

    private func configTableView() {
        tableView.register(NowShowingCell.self)
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = Config.estimatedRowHeight
    }
}

// MARK: -
extension NowShowingViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems(inSection: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(NowShowingCell.self)
        cell.viewModel = viewModel.viewModelForItem(at: indexPath)
        return cell
    }
}

// MARK: - Config
extension NowShowingViewController {

    struct Config {
        static let estimatedRowHeight: CGFloat = 50
    }
}
