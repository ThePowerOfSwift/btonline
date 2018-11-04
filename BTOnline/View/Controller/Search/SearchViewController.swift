//
//  SearchViewController.swift
//  MyApp
//
//  Created by PCM0023 on 7/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//
import UIKit
import RAMReel

class SearchViewController: BaseViewController {

    // MARK: - Properties
    var dataSource: SimplePrefixQueryDataSource!
    var ramReel: RAMReel<RAMCell, RAMTextField, SimplePrefixQueryDataSource>!

    var viewModel = SearchViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configRamReel()
    }

    override func setupUI() {

    }

    private func configRamReel() {
        dataSource = SimplePrefixQueryDataSource(viewModel.data)
        ramReel = RAMReel(frame: view.bounds, dataSource: dataSource, placeholder: "Start by typing…", attemptToDodgeKeyboard: true) {
            print("Plain:", $0)
        }

        ramReel.hooks.append {
            let r = Array($0.reversed())
            let j = String(r)
            print("Reversed:", j)
            self.ramReel.resignFirstResponder()
        }

        view.addSubview(ramReel.view)
        ramReel.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
