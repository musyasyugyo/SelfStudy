//
//  BusinessDetail.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/24.
//

import UIKit

class BusinessDetail: UIView{

    //MARK: delegate
    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//

    @IBOutlet weak var aWord: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var developmentResults: UILabel!
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
        guard let view = Bundle.main.loadNibNamed("BusinessDetail", owner: self, options: nil)?.first as? UIView else {
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
        self.aWord.text = self.businessDataArray[4]
        self.content.text = self.businessDataArray[5]
        self.developmentResults.text = self.businessDataArray[6]

        if businessDataArray[0] == "3" {

        }
    }

    @IBAction func moreButton(_ sender: Any) {
    }
    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
