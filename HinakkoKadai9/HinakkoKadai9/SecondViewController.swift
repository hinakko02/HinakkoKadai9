//
//  SecondViewController.swift
//  HinakkoKadai9
//
//  Created by Hina on 2023/06/18.
//

import UIKit
//委譲をお願いする電話
class SecondViewController: UIViewController {
    //プロトコルに準拠したdelegate変数を作成
    //classとか参照したインスタンス
    //protocolでできることを制限する
    //この時はこうするとこっちから渡してあげる
    //SecondViewControllerでできることはする！誰に任せるか色々できる
//    weak var delegate: SecondViewControllerDelegate?
    weak var delegate: ViewController?

    @IBAction func tokyoTap(_ sender: Any) {
        delegate?.select(info: "東京都")
    }

    @IBAction func kanagawaTap(_ sender: Any) {
        delegate?.select(info: "神奈川県")
    }

    @IBAction func saitamaTap(_ sender: Any) {
        delegate?.select(info: "埼玉県")
    }

    @IBAction func chibaTap(_ sender: Any) {
        delegate?.select(info: "千葉県")
    }

    @IBAction func cancelTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
