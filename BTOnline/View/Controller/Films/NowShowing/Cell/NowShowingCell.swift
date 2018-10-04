//
//  NowShowingCell.swift
//  BTOnline
//
//  Created by Kieu Nhi on 10/4/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class NowShowingCell: TableCell {

    // MARK: - Outlet
    @IBOutlet private weak var filmImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var durationLabel: UILabel!

    var viewModel = NowShowingCellViewModel() {
        didSet {
            updateView()
        }
    }

    private func updateView() {
        filmImageView.image = UIImage(named: viewModel.imagePath)
        nameLabel.text = viewModel.name
        durationLabel.text = viewModel.describe
    }
}
