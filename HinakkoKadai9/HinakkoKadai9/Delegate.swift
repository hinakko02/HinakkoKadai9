//
//  Delegate.swift
//  HinakkoKadai9
//
//  Created by Hina on 2023/06/28.
//

import Foundation
protocol SecondViewControllerDelegate: AnyObject {
    //都道府県を取得するメソッドの定義
    func select(info: String)
}
