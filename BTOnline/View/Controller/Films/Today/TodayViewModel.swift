//
//  TodayViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class TodayViewModel: ViewModel {

    // MARK: - Properties
    var times = ["12:00 - 14:00", "14:00 - 16:00", "16:00 - 18:00", "18:00 - 20:00", "20:00 - 22:00", "22:00 - 24:00"]
    var films: [[Film]] = []

    // TODO: - Dummy data
    init() {
        for _ in times {
            var filmsArray: [Film] = []
            for i in 1...10 {
                filmsArray.append(Film(imagePath: "img_test\(i % 2)", name: "Film \(i)", describe: "abcd1234"))
            }
            films.append(filmsArray)
        }
    }
}

// MARK: - Config collection
extension TodayViewModel {

    func numberOfItems(inSection section: Int) -> Int {
        return films[section].count
    }

    func viewModelForItem(indexPath: IndexPath, section: Int) -> TodayCellViewModel {
        let film = films[section][indexPath.row]
        let vm = TodayCellViewModel(film: film)
        return vm
    }

    func numberOfSections() -> Int {
        return times.count
    }

    func timeAtIndex(index: Int) -> String {
        return times[index]
    }
}
