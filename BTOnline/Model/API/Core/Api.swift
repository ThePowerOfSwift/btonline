//
//  Api.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

final class Api {

    struct Path {
        static let baseURL = "https://api.flickr.com"
        static let baseAuthURL = "https://www.flickr.com"
    }

    // MARK: - Services properties define
    struct Feed { }
}

extension Api.Path {

    struct OAuth {
        static let servicesPath = "/services"
        static let oauthPath = "/oauth"
        static let requestPath = "/request_token"
        static let authorizePath = "/authorize"
        static let accessPath = "/access_token"
        static var callBackURL: String { return "MyApp://oauth-callback/flickr" }
        static var handleURL: String { return callBackURL + "?auth_token=" }
        static var requestTokenUrl: String { return baseAuthURL + servicesPath + oauthPath + requestPath }
        static var authorizeUrl: String { return baseAuthURL + servicesPath + oauthPath + authorizePath }
        static var accessTokenUrl: String { return baseAuthURL + servicesPath + oauthPath + accessPath }
    }

    struct Feed: ApiPath {
        static var path: String { return baseURL }
        let servicesPath = "services"
        let restPath = "rest"
        var urlString: String { return Feed.path / servicesPath / restPath / "?" }
    }
}

protocol URLStringConvertible {
    var urlString: String { get }
}

protocol ApiPath: URLStringConvertible {
    static var path: String { get }
}

extension URL: URLStringConvertible {
    var urlString: String { return absoluteString }
}

extension Int: URLStringConvertible {
    var urlString: String { return String(describing: self) }
}

private func / (lhs: URLStringConvertible, rhs: URLStringConvertible) -> String {
    return lhs.urlString + "/" + rhs.urlString
}

extension String: URLStringConvertible {
    var urlString: String { return self }
}

extension CustomStringConvertible where Self: URLStringConvertible {
    var urlString: String { return description }
}
