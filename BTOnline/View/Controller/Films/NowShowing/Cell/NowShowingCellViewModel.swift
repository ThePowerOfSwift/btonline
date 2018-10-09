//
//  NowShowingCellViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class NowShowingCellViewModel: ViewModel {

    var film: Film

    var imagePath: String {
        return film.imagePath
    }

    var name: String {
        return film.name
    }

    var describe: String {
        return film.describe
    }

    init(film: Film = Film()) {
        self.film = film
    }
}
