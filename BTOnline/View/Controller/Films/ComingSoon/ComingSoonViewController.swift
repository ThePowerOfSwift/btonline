//
//  ComingSoonViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 9/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class ComingSoonViewController: BaseViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        title = App.String.titleComingSoon
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Outlet
    @IBOutlet private weak var collectionView: UICollectionView!

    // MARK: - Properties
    var viewModel = ComingSoonViewModel()

    override func setupUI() {
        configCollectionView()
    }

    private func configCollectionView() {
        collectionView.register(ComingSoonCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ComingSoonViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems(inSection: section)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(ComingSoonCell.self, forIndexPath: indexPath)
        cell.viewModel = viewModel.viewModelForItem(at: indexPath)
        return cell
    }
}

extension ComingSoonViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 300)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
    }
}
