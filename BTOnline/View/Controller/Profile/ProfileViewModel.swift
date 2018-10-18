//
//  ProfileViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/10/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class ProfileViewModel: ViewModel {

    var profileMenu: [ProfileMenu] = [ProfileMenu(icon: "ic_myinfo", name: "My Info"),
                                      ProfileMenu(icon: "ic_watched", name: "Watched"),
                                      ProfileMenu(icon: "ic_logout", name: "Logout")
                                      ]
}

extension ProfileViewModel {
    
    func numberOfItems(inSection section: Int) -> Int {
        return profileMenu.count
    }

    func viewModelForItem(at indexPath: IndexPath) -> ProfileCellViewModel {
        let menu = profileMenu[indexPath.row]
        let vm = ProfileCellViewModel(profile: menu)
        return vm
    }
}
