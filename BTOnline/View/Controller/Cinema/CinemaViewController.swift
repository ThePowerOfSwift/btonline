//
//  CinemaViewController.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 9/29/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class CinemaViewController: BaseViewController {

    // MARK: - Outlet
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Properties
    var viewModel = CinemaViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    private func configTableView() {
        tableView.register(CinemaCell.self)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = Config.estimatedRowHeight
    }
}

// MARK: - UITableViewDataSource
extension CinemaViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems(inSection: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(CinemaCell.self)
        cell.viewModel = viewModel.viewModelForItem(at: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension CinemaViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = DetailCinemaViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Config
extension CinemaViewController {

    struct Config {
        static let estimatedRowHeight: CGFloat = 50
    }
}
