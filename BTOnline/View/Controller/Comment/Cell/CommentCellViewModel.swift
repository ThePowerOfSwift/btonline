//
//  CommentCellViewModel.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 11/5/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import MVVM

final class CommentCellViewModel: ViewModel {

    private var comment: Comment

    var avatar: String {
        return comment.avatarPath
    }

    var username: String {
        return comment.userName
    }

    var content: String {
        return comment.content
    }

    var timeAgo: String {
        return "3 days ago"
    }

    init(comment: Comment = Comment()) {
        self.comment = comment
    }
}
