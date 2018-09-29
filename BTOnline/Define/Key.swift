//
//  Key.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 7/31/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

extension App {

    static let userDefault = UserDefaults.standard

    struct KeyFlickr {
        static let consumerKey = "947355554d9ce9bc55a2f4dc778f14d8"
        static let consumerSecret = "e36299acecd8efc4"
    }

    struct KeyUserDefault {
        static let oauthTokenKey = "oauthToken"
        static let oauthVerifierKey = "oauthVerifier"
        static let userIDKey = "userID"
        static let statusLoginKey = "statusLoginKey"
    }
}
