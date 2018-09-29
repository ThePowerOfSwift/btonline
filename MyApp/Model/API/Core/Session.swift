//
//  Session.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 8/2/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

final class Session {

    // MARK: - Singleton
    public static var share: Session = {
        let session = Session()
        return session
    }()

    private init() { }

    var oauthToken: String? = App.userDefault.string(forKey: App.KeyUserDefault.oauthTokenKey) {
        didSet {
            App.userDefault.set(oauthToken, forKey: App.KeyUserDefault.oauthTokenKey)
        }
    }

    var oauthVerifier: String? = App.userDefault.string(forKey: App.KeyUserDefault.oauthVerifierKey) {
        didSet {
            App.userDefault.set(oauthVerifier, forKey: App.KeyUserDefault.oauthVerifierKey)
        }
    }

    var userID: String? = App.userDefault.string(forKey: App.KeyUserDefault.userIDKey) {
        didSet {
            App.userDefault.set(userID, forKey: App.KeyUserDefault.userIDKey)
        }
    }

    var statusLogin: Bool? = App.userDefault.bool(forKey: App.KeyUserDefault.statusLoginKey) {
        didSet {
            App.userDefault.set(statusLogin, forKey: App.KeyUserDefault.statusLoginKey)
        }
    }
}
