//
//  CommentCell.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 11/5/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class CommentCell: TableCell {

    // MARK: - Outlet
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var contentLabel: UILabel!
    @IBOutlet private weak var timeAgoLabel: UILabel!

    // MARK: - Properties
    var viewModel = CommentCellViewModel() {
        didSet {
            updateView()
        }
    }

    private func updateView() {
        avatarImageView.image = UIImage(named: viewModel.avatar)
        nameLabel.text = viewModel.username
        timeAgoLabel.text = viewModel.timeAgo
        contentLabel.text = viewModel.content
    }

}
