//
//  URLExt.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 7/31/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

extension URL {

    func getQueryStringParameter(param: String) -> String? {
        guard let url = URLComponents(url: self, resolvingAgainstBaseURL: true) else { return nil }
        return url.queryItems?.first(where: { $0.name == param })?.value
    }
}
