//
//  Film.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 10/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import ObjectMapper

final class Film: Mappable {

    init?(map: Map) {
    }

    var id: String = ""
    var imagePath: String = ""
    var name: String = ""
    var describe: String = ""

    func mapping(map: Map) {

    }

    init() {
    }

    init(imagePath: String, name: String, describe: String) {
        self.imagePath = imagePath
        self.name = name
        self.describe = describe
    }
}
