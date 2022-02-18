//
//  ViewController.swift
//  MiniApp05-ModalDateJudge
//
//  Created by 前田航汰 on 2022/02/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!

    @IBAction func didTapJudgeButton(_ sender: Any) {
        guard let number = Int(textField.text ?? "") else {
            return
        }

        if number % 5 == 0 {
            self.performSegue(withIdentifier: "Success", sender: sender)
        } else {
            self.performSegue(withIdentifier: "Failure", sender: sender)
        }
    }

    @IBAction func exit(segue: UIStoryboardSegue){
    }
}

