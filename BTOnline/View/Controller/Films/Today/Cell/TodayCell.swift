//
//  TodayCell.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class TodayCell: CollectionCell {

    // MARK: - Outlet
    @IBOutlet private weak var filmImageView: UIImageView!

    // MARK: - Properties
    var viewModel = TodayCellViewModel() {
        didSet {
            updateView()
        }
    }

    private func updateView() {
        filmImageView.image = UIImage(named: viewModel.imagePath)
    }

}
