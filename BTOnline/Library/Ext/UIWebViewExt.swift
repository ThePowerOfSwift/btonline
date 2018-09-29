//
//  UIWebViewExt.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 7/31/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import WebKit

extension UIWebView {
    func clear(cache: Bool, cookies: Bool) {
        if cache { clearCache() }
        if cookies { clearCookies() }
    }

    func clearCache() {
        URLCache.shared.removeAllCachedResponses()
        URLCache.shared.diskCapacity = 0
        URLCache.shared.memoryCapacity = 0
    }

    func clearCookies() {
        let cookieStorage = HTTPCookieStorage.shared
        guard let cookies = cookieStorage.cookies else { return }
        for cookie in cookies {
            cookieStorage.deleteCookie(cookie)
        }
    }
}
