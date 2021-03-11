//
//  BusinessInformationViewController.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/10.
//

import UIKit

class BusinessInformationViewController: BaseUIViewController, MainViewDelegate {

    //MARK: deinit
    deinit {
        print("[deinit] MainViewController")
    }

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet var businessInformation: BusinessInformationView!

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
