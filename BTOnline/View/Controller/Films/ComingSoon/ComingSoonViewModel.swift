//
//  ComingSoonViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class ComingSoonViewModel: ViewModel {

    // MARK: - Properties
    var films: [Film] = []

    // MARK: - Dummy data
    init() {
        for i in 1...10 {
            films.append(Film(imagePath: "img_test\(i % 2)", name: "Film name \(i)", describe: "Opening Feb 14"))
        }
    }
}

extension ComingSoonViewModel {

    func numberOfItems(inSection section: Int) -> Int {
        return films.count
    }

    func viewModelForItem(at indexPath: IndexPath) -> ComingSoonCellViewModel {
        let film = films[indexPath.row]
        let vm = ComingSoonCellViewModel(film: film)
        return vm
    }
}
