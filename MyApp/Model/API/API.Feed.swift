//
//  API.Feed.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 8/3/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

extension Api.Feed {

    struct FeedResult {
        var page: Int
        var feeds: [Feed] = []
    }

    struct QueryParams {
        let apiKey: String
        let method: String
        let format: String
        let extras: String
        let nojsoncallback: Int = 1
        let page: Int
        let perPage: Int = 30
        let tags: String
        let sort: String

        func toJSON() -> [String: Any] {
            return [
                "api_key": apiKey,
                "method": method,
                "format": format,
                "extras": extras,
                "nojsoncallback": nojsoncallback,
                "page": page,
                "per_page": perPage,
                "tags": tags,
                "sort": sort
            ]
        }
    }

    @discardableResult
    static func query(params: QueryParams, completion: @escaping Completion<FeedResult>) -> Request? {
        let path = Api.Path.Feed().urlString
        return api.request(method: .get, urlString: path, parameters: params.toJSON()) { (result) in
            switch result {
            case .success(let value):
                guard let json = value as? JSObject,
                    let photoJSObject = json["photos"] as? JSObject,
                    let page = photoJSObject["page"] as? Int,
                    let photosJSArray = photoJSObject["photo"] as? JSArray else {
                        completion(.failure(Api.Error.json))
                        return
                }
                let feeds = Mapper<Feed>().mapArray(JSONArray: photosJSArray)
                DispatchQueue.main.async {
                    completion(.success(FeedResult(page: page, feeds: feeds)))
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
}
