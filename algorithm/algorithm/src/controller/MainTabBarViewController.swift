//
//  MainTabBarViewController.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/10.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()

        //init
        self.initialize()
    }

    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
        var viewControllers: [UIViewController] = []

        let tab1 = UIStoryboard(name: "BusinessInformation", bundle: nil)
        if let tab1VC = tab1.instantiateInitialViewController() as? BaseUINavigationController {
            viewControllers.append(tab1VC)
        }

        // ViewControllerをセット
        self.setViewControllers(viewControllers, animated: false)
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
