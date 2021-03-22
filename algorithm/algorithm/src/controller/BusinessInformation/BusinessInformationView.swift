//
//  BusinessInformationView.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/21.
//

import UIKit

protocol MainViewDelegate: class {

}

class BusinessInformationView: UIView{

    //MARK: delegate
    public weak var delegate: MainViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var businessLabel: UITextView!
    @IBOutlet weak var pagingScrollView: UIScrollView!
    // 1. ページ数
    let pageCount = 3

    // 3. StackViewの作成
    let contentView = UIStackView()

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
            guard let view = Bundle.main.loadNibNamed("BusinessInformationView", owner: self, options: nil)?.first as? UIView else {
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
        self.contentViewLoad()
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//
    func contentViewLoad() {
        // 3.
        //以下のようにすると横向きのページングとして使用することができ、追加されたページのレイアウトもStack　Viewが揃えてくれる
        // 以下のプロパティの説明は、https://qiita.com/tasanobu/items/6908c956b758547ccf6c を参照
        contentView.spacing = 0.0
        contentView.axis = .horizontal
        contentView.alignment = .fill
        contentView.distribution = .fillEqually

        pagingScrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // Top Bottom Leading TrailingはすべてScroll Viewに合わせる
            contentView.topAnchor.constraint(equalTo: pagingScrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: pagingScrollView.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: pagingScrollView.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: pagingScrollView.trailingAnchor),

            // HeightはpagingScrollViewに合わせる。
            contentView.heightAnchor.constraint(equalTo: pagingScrollView.heightAnchor),
            // WidthはpagingScrollView.widthAnchor x ページ数
            contentView.widthAnchor.constraint(equalTo: pagingScrollView.widthAnchor, multiplier: CGFloat(pageCount))
        ])

        let businessDataArray:[[String]] = [
            ["1", "", "softwareTitle".localized, "", "", "", ""],
            ["2", "", "", "", "", "", ""],
            ["3", "", "", "", "", "", ""],
        ]

        let firstView = InfoContents()
        // Stack Viewへの追加なのでaddArrangedSubview
        contentView.addArrangedSubview(firstView)

        let secondView = InfoContents()
        contentView.addArrangedSubview(secondView)

        let therdView = InfoContents()
        contentView.addArrangedSubview(therdView)
    }

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//

}
