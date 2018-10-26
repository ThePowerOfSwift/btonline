//
//  ProfileViewController.swift
//  MyApp
//
//  Created by PCM0023 on 7/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class ProfileViewController: BaseViewController {

    // MARK: - Outlet
    @IBOutlet private weak var backgroundImageView: UIImageView!
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var localLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Properties
    var viewModel = ProfileViewModel()

    override func setupUI() {
        navigationController?.navigationBar.isHidden = true
        configTableView()
        // TODO: - Dummy data
        configView()
    }

    private func configView() {
        backgroundImageView.image = #imageLiteral(resourceName: "img-avatar-test")
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        avatarImageView.image = #imageLiteral(resourceName: "img-avatar-test")
        nameLabel.text = "John Cena"
        localLabel.text = "Da Nang"
    }

    private func configTableView() {
        tableView.register(ProfileCell.self)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = Config.rowHeight
        tableView.alwaysBounceVertical = false
    }

}

// MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems(inSection: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(ProfileCell.self)
        cell.viewModel = viewModel.viewModelForItem(at: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {

    // TODO: - Handle later
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - Config
extension ProfileViewController {

    struct Config {
        static let rowHeight: CGFloat = 90
    }
}
