//
//  ViewController.swift
//  HinakkoKadai9
//
//  Created by Hina on 2023/06/18.
//

import UIKit
//委譲をお願いされている先生
class ViewController: UIViewController, SecondViewControllerDelegate {

    @IBOutlet weak var prefectureLabel: UILabel!
    //都道府県を取得し、ラベルに反映した後に、モーダルを閉じる
    //委譲された際の具体的な処理を書いている。待っている。
    func select(info: String) {
        prefectureLabel.text = info
        dismiss(animated: true, completion: nil)
    }

    // 遷移先からデータを受け取るための準備//行き先に行く準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        print(#function)
        // 遷移先のセグエの名前をチェックし、セグエが一致していたら次の処理へ
        if segue.identifier == "toSecondViewController" {

            // セグエの型をUINavigationController型に変換して取得
            if let navigation = segue.destination as? UINavigationController,
               // UINavigationControllerの最初のビューコントローラーをSecondViewController型に変換して取得
               let city = navigation.viewControllers.first as? SecondViewController {
                //ViewControllerにSecondViewControllerの情報を受け取る
                //やること//参照型であることを前提！！classであるから
                //ViewControllerの全く同じ住所を参照、遷移前と遷移後同じ！任されるのは俺だ！
                city.delegate = self
            }
        }
    }
}
