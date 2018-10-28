//
//  AppDelegate.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import AlamofireNetworkActivityIndicator

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    enum RootViewController {
        case login
        case logout
    }

    static let shared: AppDelegate = {
        guard let shared = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Cannot cast `UIApplication.shared.delegate` to `AppDelegate`.")
        }
        return shared
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configNetwork()
        configRoot()
//        if App.userDefault.bool(forKey: App.KeyUserDefault.statusLoginKey) {
//            switchRoot(root: .login)
//        } else {
//            switchRoot(root: .logout)
//        }
        switchRoot(root: .login)
        window?.makeKeyAndVisible()
        return true
    }

    private func configRoot() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
    }

    func switchRoot(root: RootViewController) {
        switch root {
        case .login:
            //Films
            let filmsVC = FilmsViewController()
            let filmsTabBarItem = UITabBarItem(title: "Films", image: #imageLiteral(resourceName: "ic_tabbar_home"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_home"))
            filmsVC.tabBarItem = filmsTabBarItem
            let homeNC = BaseNavigationController(rootViewController: filmsVC)

            //Cinema
            let cinemaVC = CinemaViewController()
            let cinemaTabBarItem = UITabBarItem(title: "Cinemas", image: #imageLiteral(resourceName: "ic_tabbar_follower"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_follower"))
            cinemaVC.tabBarItem = cinemaTabBarItem
            let followNC = BaseNavigationController(rootViewController: cinemaVC)

            //search
            let searchVC = SearchViewController()
            let searchTabBarItem = UITabBarItem(title: "Search", image: #imageLiteral(resourceName: "ic_tabbar_search"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_search"))
            searchVC.tabBarItem = searchTabBarItem
            let searchNC = BaseNavigationController(rootViewController: searchVC)

            //profile
            let profileVC = ProfileViewController()
            let profileTabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "ic_tabbar_profile"), selectedImage: #imageLiteral(resourceName: "ic_tabbar_profile"))
            profileVC.tabBarItem = profileTabBarItem
            let profileNC = BaseNavigationController(rootViewController: profileVC)

            let tabBar = BaseTabBarController()
            tabBar.viewControllers = [homeNC, followNC, searchNC, profileNC]
            window?.rootViewController = tabBar
            Session.share.statusLogin = true

        case .logout:
            let loginVC = LoginViewController()
            let navi = BaseNavigationController(rootViewController: loginVC)
            window?.rootViewController = navi
            Session.share.statusLogin = false
        }
    }
}

extension AppDelegate {

    private func configNetwork() {
        NetworkActivityIndicatorManager.shared.isEnabled = true
        NetworkActivityIndicatorManager.shared.startDelay = 0
    }

//    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey: Any] = [:]) -> Bool {
//        if url.host == "oauth-callback" {
//            OAuthSwift.handle(url: url)
//        }
//        return true
//    }
}
