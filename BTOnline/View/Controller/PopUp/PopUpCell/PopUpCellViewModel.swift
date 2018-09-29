//
//  PopUpCellViewModel.swift
//  MyApp
//
//  Created by PCM0023 on 8/1/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class PopUpCellViewModel: ViewModel {

    let imageName: String
    let title: String

    init(popup: PopUpItem) {
        imageName = popup.image
        title = popup.title
    }
}
