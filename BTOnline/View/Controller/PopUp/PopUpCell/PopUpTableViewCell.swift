//
//  PopUpTableViewCell.swift
//  MyApp
//
//  Created by PCM0023 on 8/1/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import MVVM

final class PopUpTableViewCell: UITableViewCell, View {

    // MARK: - IBOutlet
    @IBOutlet private weak var cellImageView: UIImageView!
    @IBOutlet private weak var cellTitleLable: UILabel!

    var viewModel: PopUpCellViewModel? {
        didSet {
            updateView()
        }
    }

    func updateView() {
        guard let viewModel = viewModel else { return }
        let image = UIImage(named: viewModel.imageName) ?? #imageLiteral(resourceName: "img_fish_10")
        cellImageView.image = image
        cellTitleLable.text = viewModel.title
    }
}
