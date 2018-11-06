//
//  Comment.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 11/5/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import ObjectMapper

final class Comment: Mappable {

    init?(map: Map) {
    }

    var userId: String = ""
    var avatarPath: String = ""
    var userName: String = ""
    var content: String = ""
    var dateCreate: String = ""

    func mapping(map: Map) {

    }

    init() {
    }

    init(avatarPath: String, userName: String, content: String, dateCreate: String) {
        self.avatarPath = avatarPath
        self.userName = userName
        self.content = content
        self.dateCreate = dateCreate
    }
}
