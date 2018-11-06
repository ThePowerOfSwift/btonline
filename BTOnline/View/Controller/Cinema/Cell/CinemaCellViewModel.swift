//
//  CinemaCellViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/4/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class CinemaCellViewModel: ViewModel {

    private var cinema: Cinema

    var imagePath: String {
        return cinema.imagePath
    }

    var name: String {
        return cinema.name
    }

    var locality: String {
        return cinema.locality
    }

    init(cinema: Cinema = Cinema()) {
        self.cinema = cinema
    }
}
