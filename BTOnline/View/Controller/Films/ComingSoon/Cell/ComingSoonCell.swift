//
//  ComingSoonCell.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class ComingSoonCell: CollectionCell {

    // MARK: - Outlet
    @IBOutlet private weak var filmImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var describeLabel: UILabel!

    // MARK: - Properties
    var viewModel = ComingSoonCellViewModel() {
        didSet {
            updateView()
        }
    }

    private func updateView() {
        filmImageView.image = UIImage(named: viewModel.imagePath)
        nameLabel.text = viewModel.name
        describeLabel.text = viewModel.describe
    }
}
