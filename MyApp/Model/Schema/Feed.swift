//
//  feed.swift
//  MyApp
//
//  Created by PCM0023 on 8/1/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import ObjectMapper

final class Feed: Mappable {

    init?(map: Map) {
    }

    var id: String = ""
    var imagePath: String = ""
    var title: String = ""
    var width: String = ""
    var height: String = ""
    var owner: String = ""

    func mapping(map: Map) {
        id <- map["id"]
        imagePath <- map["url_z"]
        title <- map["title"]
        width <- map["width_z"]
        height <- map["height_z"]
        owner <- map["owner"]
    }
}
