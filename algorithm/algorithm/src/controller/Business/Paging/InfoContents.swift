//
//  InfoContents.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/21.
//

import UIKit
protocol InfoContentsDelegate: class {
    func toBusinessInformation()
}

class InfoContents: UIView{
    weak var delegate: InfoContentsDelegate? = nil

    //MARK: delegate
    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!

    var businessDataArray: [String] = []

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }

    init(businessDataArray: [String]) {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        self.businessDataArray = businessDataArray
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
        self.titleLabel.text = self.businessDataArray[2]
        self.contentLabel.text = self.businessDataArray[3]
    }

    @IBAction func moreButton(_ sender: Any) {
        self.delegate?.toBusinessInformation()
    }
    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
