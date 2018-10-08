//
//  Strings.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

/**
 This file defines all localizable strings which are used in this application.
 Please localize defined strings in `Resources/Localizable.strings`.
 */

import Foundation
import SwiftUtils

extension App {
    struct String {
        static let error = "ERROR".localized()
        static let ok = "OK".localized()

        //Popup
        static let popUpHide = "Hide"
        static let popUpSave = "Save"
        static let popUpSend = "Send"
        static let popUpDownload = "Download"
        static let popUpCopy = "Copy"

        //Film
        static let titleNowShowing = "NOW SHOWING"
        static let titleComingSoon = "COMING SOON"
        static let titleToday = "TODAY"

    }
}
