//
//  ViewController.swift
//  Kadai3
//
//  Created by Yudai Fujioka on 2021/06/12.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var calculateButton: UIButton!
    @IBOutlet private weak var leftResultLabel: UILabel!
    @IBOutlet private weak var rightResultLabel: UILabel!
    @IBOutlet private weak var allResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.addTarget(self, action: #selector(tppedCalculateButton), for: .touchUpInside)
    }
}

@objc private extension ViewController {
    func tppedCalculateButton() {
        
        let leftInputNum = Int(leftTextField.text ?? "") ?? 0

        let leftResultNum: Int
        if leftSwitch.isOn {
            leftResultNum = -leftInputNum
        } else {
            leftResultNum = leftInputNum
        }
        leftResultLabel.text = String(leftResultNum)

        let rightInputNum = Int(rightTextField.text ?? "") ?? 0

        let rightResultNum: Int
        if rightSwitch.isOn {
            rightResultNum = -rightInputNum
        } else {
            rightResultNum = rightInputNum
        }
        rightResultLabel.text = String(rightResultNum)

        let result = leftResultNum + rightResultNum
        allResultLabel.text = String(result)
    }
}
