//
//  ProfileCellViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/11/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class ProfileCellViewModel: ViewModel {

    var profile: ProfileMenu

    var icon: String {
        return profile.icon
    }

    var name: String {
        return profile.name
    }

    init(profile: ProfileMenu = ProfileMenu()) {
        self.profile = profile
    }

}
