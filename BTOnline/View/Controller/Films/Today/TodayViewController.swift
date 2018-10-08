//
//  TodayViewController.swift
//  BTOnline
//
//  Created by Quang Nguyen K. on 9/30/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import GlidingCollection

final class TodayViewController: BaseViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        title = App.String.titleToday
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Outlet
    @IBOutlet private weak var glidingView: GlidingCollection!

    // MARK: - Properties
    private var collectionView: UICollectionView!
    var viewModel = TodayViewModel()

    override func setupUI() {
        configGlidingView()
        configCollectionView()
    }

    private func configCollectionView() {
        glidingView.dataSource = self
        collectionView = glidingView.collectionView
        collectionView.register(TodayCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = glidingView.backgroundColor
    }

    private func configGlidingView() {
        var config = GlidingConfig.shared
        config.activeButtonColor = App.Color.textTitle
        guard let font = UIFont(name: "Montserrat-SemiBold", size: 20) else { return }
        config.buttonsFont = font
        GlidingConfig.shared = config
    }
}

// MARK: - UICollectionViewDataSource
extension TodayViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let section = glidingView.expandedItemIndex
        return viewModel.numberOfItems(inSection: section)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(TodayCell.self, forIndexPath: indexPath)
        let section = glidingView.expandedItemIndex
        cell.viewModel = viewModel.viewModelForItem(indexPath: indexPath, section: section)
        cell.contentView.clipsToBounds = true
        let layer = cell.layer
        let config = GlidingConfig.shared
        layer.shadowOffset = config.cardShadowOffset
        layer.shadowColor = config.cardShadowColor.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = config.cardShadowRadius
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension TodayViewController: UICollectionViewDelegate {

    // TODO: - Handle later
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let section = glidingView.expandedItemIndex
        let item = indexPath.item
        print("Selected item #\(item) in section #\(section)")
    }
}

// MARK: - GlidingCollectionDatasource
extension TodayViewController: GlidingCollectionDatasource {

    func numberOfItems(in collection: GlidingCollection) -> Int {
        return viewModel.numberOfSections()
    }

    func glidingCollection(_ collection: GlidingCollection, itemAtIndex index: Int) -> String {
        return viewModel.timeAtIndex(index: index)
    }
}
