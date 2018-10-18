//
//  Profile.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/11/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

final class ProfileMenu {

    var icon: String = ""
    var name: String = ""

    init() {
    }

    init(icon: String, name: String) {
        self.icon = icon
        self.name = name
    }
}
