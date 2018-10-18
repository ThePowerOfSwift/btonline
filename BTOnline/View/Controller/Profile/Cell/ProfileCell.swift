//
//  ProfileCell.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/11/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class ProfileCell: TableCell {

    // MARK: - Outlet
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var nameCellLabel: UILabel!

    // MARK: - Properties
    var viewModel = ProfileCellViewModel() {
        didSet {
            updateView()
        }
    }

    private func updateView() {
        iconImageView.image = UIImage(named: viewModel.icon)
        nameCellLabel.text = viewModel.name
    }
}
