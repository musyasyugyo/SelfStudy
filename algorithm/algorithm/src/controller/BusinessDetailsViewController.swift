//
//  BusinessDetailsViewController.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/24.
//

import UIKit

class BusinessDetailsViewController: BaseUIViewController {

    //MARK: deinit


    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet var BusinessDetails: BusinessDetailsViewController!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation title
        //self.navigationItem.title = "main_navigation_name".localized()

        //init
        self.initialize()
    }


    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
        //self.BusinessInformationView.delegate = self
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
