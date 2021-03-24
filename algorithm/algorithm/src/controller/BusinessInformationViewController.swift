//
//  BusinessInformationViewController.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/10.
//

import UIKit

class BusinessInformationViewController: BaseUIViewController, BusinessDetailDelegate {
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
        self.businessInformation.delegate = self
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//
    func toBusinesDetails() {
        let storyboardControlDetail: UIStoryboard = UIStoryboard(name: "BusinessDetailView", bundle: nil)
        guard let controlDetail = storyboardControlDetail.instantiateInitialViewController() as? BaseUINavigationController else {
            return
        }
        self.present(controlDetail, animated: true)
    }
    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
