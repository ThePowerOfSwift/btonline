////
////  PopUpViewController.swift
////  MyApp
////
////  Created by PCM0023 on 7/31/18.
////  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
////
//
//import UIKit
//
//protocol PopUpViewControllerDelegate: class {
//    func popUpType(_ controller: PopUpViewController, needsPerformAction action: PopUpViewController.Action)
//}
//
//final class PopUpViewController: BaseViewController {
//
//    // MARK: - Outlet
//    @IBOutlet private weak var popUpTableView: UITableView!
//    @IBOutlet private weak var popupHeight: NSLayoutConstraint!
//
//    // MARK: - Properties
//    var viewModel = PopUpViewModel()
//    weak var delegate: PopUpViewControllerDelegate?
//
//    override func setupUI() {
//        configView()
//        showAnimate()
//        configTableView()
//    }
//
//    private func configView() {
//        tabBarController?.tabBar.isHidden = true
//        view.backgroundColor = UIColor.black.withAlphaComponent(Config.alphaComponent)
//        configPopupHeight()
//    }
//
//    private func configPopupHeight() {
//        let numberOfItem = viewModel.numberOfItem()
//        if numberOfItem <= Config.maxNumberOfItem {
//            popupHeight.constant = CGFloat(numberOfItem * Config.rowHieght + Config.padding + Config.toolBarHieght )
//        } else {
//            popupHeight.constant = CGFloat(Config.maxNumberOfItem * Config.rowHieght + Config.padding + Config.toolBarHieght)
//        }
//        view.layoutIfNeeded()
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        removeAnimate()
//    }
//
//    @IBAction func closePopUpButtonTouchUpInside(_ sender: Any) {
//        removeAnimate()
//    }
//    // MARK: - Private function
//    private func showAnimate() {
//        view.transform = CGAffineTransform(scaleX: Config.scaleX, y: Config.y)
//        view.alpha = Config.alpha
//        UIView.animate(withDuration: Config.animateDuaration, animations: {
//            self.view.alpha = Config.animateAlpha
//            self.view.transform = CGAffineTransform(scaleX: Config.animateScaleX, y: Config.animateY)
//            self.navigationController?.navigationBar.barTintColor = App.Color.navigationBarTintColor
//        })
//    }
//
//    private func configTableView() {
//        let nib = UINib(nibName: Config.popUpCell, bundle: nil)
//        popUpTableView.register(nib, forCellReuseIdentifier: Config.popUpCell)
//        popUpTableView.dataSource = self
//        popUpTableView.delegate = self
//        popUpTableView.rowHeight = CGFloat(Config.rowHieght)
//    }
//
//    private func removeAnimate() {
//        UIView.animate(withDuration: Config.animateDuaration, animations: {
//            self.view.transform = CGAffineTransform(scaleX: Config.scaleX, y: Config.y)
//            self.view.alpha = Config.alpha
//        }, completion: {(finished) -> Void in
//            if finished {
//                self.view.removeFromSuperview()
//                self.tabBarController?.tabBar.isHidden = false
//            }
//        })
//    }
//}
//
//extension PopUpViewController {
//    enum Action {
//        case getPopUpType(popUpType: PopUpViewModel.PopUpType)
//    }
//
//    // MARK: - identifier
//    struct Config {
//        static let popUpCell = "PopUpTableViewCell"
//        static let alphaComponent: CGFloat = 0.5
//        static let maxNumberOfItem = 3
//        static let rowHieght = 50
//        static let toolBarHieght = 40
//        static let padding = 20
//        static let animateDuaration = 0.25
//        static let scaleX: CGFloat = 1.3
//        static let y: CGFloat = 1.3
//        static let alpha: CGFloat = 0.0
//        static let animateScaleX: CGFloat = 1.0
//        static let animateY: CGFloat = 1.0
//        static let animateAlpha: CGFloat = 1.0
//    }
//}
//
//// MARK: - UITableViewDataSource
//extension PopUpViewController: UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return viewModel.numberOfItem()
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: Config.popUpCell) as? PopUpTableViewCell else { return UITableViewCell() }
//        cell.viewModel = viewModel.viewModelForItem(at: indexPath)
//        cell.tag = indexPath.row
//        return cell
//    }
//}
//
//// MARK: - UITableViewDelegate
//extension PopUpViewController: UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let popUpType = viewModel.sessionType.popUpTypes[indexPath.row]
//        removeAnimate()
//        delegate?.popUpType(self, needsPerformAction: .getPopUpType(popUpType: popUpType))
//    }
//}
