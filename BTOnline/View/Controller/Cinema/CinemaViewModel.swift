//
//  CinemaViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/3/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class CinemaViewModel: ViewModel {

    var cinemas: [Cinema] = []

    // TODO: - Dummy data
    init() {
        for i in 1...4 {
            cinemas.append(Cinema(imagePath: "img_cinema\(i % 2)", name: "CINEMA \(i)", locality: "Da Nang"))
        }
    }
}

extension CinemaViewModel {

    func numberOfItems(inSection section: Int) -> Int {
        return cinemas.count
    }

    func viewModelForItem(at indexPath: IndexPath) -> CinemaCellViewModel {
        let cinema = cinemas[indexPath.row]
        let vm = CinemaCellViewModel(cinema: cinema)
        return vm
    }
}
