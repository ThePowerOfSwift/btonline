//
//  Cinema.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/4/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import ObjectMapper

final class Cinema: Mappable {

    init?(map: Map) {
    }

    var id: String = ""
    var imagePath: String = ""
    var name: String = ""
    var locality: String = ""

    func mapping(map: Map) {

    }

    init() {
    }

    init(imagePath: String, name: String, locality: String) {
        self.imagePath = imagePath
        self.name = name
        self.locality = locality
    }
}
