//
//  NowShowingViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class NowShowingViewModel: ViewModel {

    var films: [Film] = []

    // TODO: - Dummy data
    init() {
        for i in 1...10 {
            films.append(Film(imagePath: "img_test\(i % 2)", name: "Film \(i)", describe: "abcd1234"))
        }
    }
}

extension NowShowingViewModel {

    func numberOfItems(inSection section: Int) -> Int {
        return films.count
    }

    func viewModelForItem(at indexPath: IndexPath) -> NowShowingCellViewModel {
        let film = films[indexPath.row]
        let vm = NowShowingCellViewModel(film: film)
        return vm
    }
}
