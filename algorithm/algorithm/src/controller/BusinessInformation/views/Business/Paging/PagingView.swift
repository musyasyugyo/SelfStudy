//
//  PagingView.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/13.
//

import UIKit

class PagingView: UIView{

    //MARK: delegate
//    public weak var delegate: MainViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!

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
        guard let view = Bundle.main.loadNibNamed("PagingView", owner: self, options: nil)?.first as? UIView else {
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
    }

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//

}
