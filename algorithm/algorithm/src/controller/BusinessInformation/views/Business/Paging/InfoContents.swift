//
//  PagingView.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/13.
//

import UIKit

class InfoContents: UIView{

    //MARK: delegate
//    public weak var delegate: MainViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!

    let Software = UIImage(named: "Software")
    let Hardware = UIImage(named: "Hardware")
    let Substrate = UIImage(named: "Substrate")
    let businessImage:  Dictionary <Int, String> = [0: "Software", 1: "Hardware", 2: "Substrate"]
    let businesstitle: Dictionary <Int, String> = [0:"softwareTitle".localized,
                                                   1:"hardwareTitle".localized,
                                                   2:"substrateTitle".localized]
    let businessContents: Dictionary <Int, String> = [0:"softwareOverview".localized,
                                                      1:"hardwareOverview".localized,
                                                      2:"substrateOverview".localized]

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNib()
    }

    func loadNib() {
        guard let view = Bundle.main.loadNibNamed("InfoContents", owner: self, options: nil)?.first as? UIView else {
            return
        }
        view.frame = self.frame
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let views = ["subView": view]
        self.addConstraints (
            NSLayoutConstraint.constraints(
                withVisualFormat: "V:|[subView]|",
                options:NSLayoutConstraint.FormatOptions(rawValue: 0),
                metrics: nil,
                views: views
            )
        )
        self.addConstraints (
            NSLayoutConstraint.constraints(
                withVisualFormat: "H:|[subView]|",
                options:NSLayoutConstraint.FormatOptions(rawValue: 0),
                metrics: nil,
                views: views
            )
        )
        //init
        self.initialize()
    }

    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
//        if let indexTitle = businesstitle.firstIndex(where: {$0.key == 0}) {
//            titleLabel.text = businesstitle[indexTitle].value
//            print(businesstitle[indexTitle])
//        }
//        if let indexContents = businessContents.firstIndex(where: {$0.key == 0}) {
//            contentLabel.text = businessContents[indexContents].value
//            print(businessContents[indexContents])
//        }
//        titleLabel.text = "software".localized
//        contentLabel.text = "softwareOverview".localized
        for (key, value) in businessImage {
            print("key: \(key), value: \(value)")
        }
        for (key, value) in businesstitle {
            titleLabel.text = value
            print("key: \(key), value: \(value)")
        }
        for (key, value) in businessContents {
            contentLabel.text = value
            print("key: \(key), value: \(value)")
        }


//        for value in businessImage {
//            print(businessImage.values)
//            //imageView.image = value.value
//            print(value.value)
//        }
//        for value in businesstitle {
//            titleLabel.text = value.value
//            print(value.value)
//        }
//        for value in businessContents {
//            contentLabel.text = value.value
//            print(value.value)
//        }
    }

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//

}
