//
//  PopUpViewModel.swift
//  MyApp
//
//  Created by PCM0023 on 8/1/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import MVVM

final class PopUpViewModel: ViewModel {

    // MARK: - Properties
    var sessionType: SessionType

    init(sessionType: SessionType = .home) {
        self.sessionType = sessionType
    }

    func numberOfItem() -> Int {
        return sessionType.popUpTypes.count
    }

    func viewModelForItem(at indexPath: IndexPath) -> PopUpCellViewModel {
        let popup = sessionType.popUpTypes[indexPath.row]
        let popUpCellViewModel = PopUpCellViewModel(popup: popup.item)
        return popUpCellViewModel
    }
}

extension PopUpViewModel {

    enum SessionType {
        case home
        case detail

        var popUpTypes: [PopUpType] {
            switch self {
            case .home: return [.send, .save, .hide]
            case .detail: return [.download, .copy]
            }
        }
    }

    enum PopUpType {
        case send
        case hide
        case save
        case download
        case copy

        var item: PopUpItem {
            switch self {
            case .send: return PopUpItem(image: "ic_cell_send", title: App.String.popUpSend)
            case .hide: return PopUpItem(image: "ic_cell_close", title: App.String.popUpHide)
            case .save: return PopUpItem(image: "ic_cell_save", title: App.String.popUpSave)
            case .download: return PopUpItem(image: "", title: App.String.popUpDownload)
            case .copy: return PopUpItem(image: "", title: App.String.popUpCopy)
            }
        }
    }
}
