//
//  CinemaCell.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/4/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

final class CinemaCell: TableCell {

    // MARK: - Outlet
    @IBOutlet private weak var cinemaImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var localLabel: UILabel!

    // MARK: - Properties
    var viewModel = CinemaCellViewModel() {
        didSet {
            updateView()
        }
    }

    private func updateView() {
        cinemaImageView.image = UIImage(named: viewModel.imagePath)
        nameLabel.text = viewModel.name
        localLabel.text = viewModel.locality
    }

}
