//
//  Extensions.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/03/21.
//

import UIKit
import Foundation

extension String {
    var localized: String {
        let localizedString: String = NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "##ID定義なし##_" + self, comment: self)
        return localizedString
    }
}
