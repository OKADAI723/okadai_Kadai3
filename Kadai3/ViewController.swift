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
    @IBOutlet weak var allResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.addTarget(self, action: #selector(tppedCalculateButton), for: .touchUpInside)
    }
}

@objc private extension ViewController {
    func tppedCalculateButton() {
       
        let leftResultNum: Int
        if leftSwitch.isOn {
            guard let leftInputNum = Int(leftTextField.text ?? "" ) else { return }
            let minusLeftNum = -leftInputNum
            leftResultLabel.text = String(minusLeftNum)
            leftResultNum = minusLeftNum
        } else {
            let leftInputNum = Int(leftTextField.text ?? "")
            leftResultLabel.text = String(leftInputNum!)
            leftResultNum = leftInputNum ?? 0
        }
        
        let rightResultNum: Int
        if rightSwitch.isOn {
            guard let rightInputNum = Int(rightTextField.text ?? "") else { return }
            let minusRgihtNum = -rightInputNum
            rightResultLabel.text = String(minusRgihtNum)
            rightResultNum = minusRgihtNum
        } else {
            let rightInputNum = Int(rightTextField.text ?? "")
            rightResultLabel.text = String(rightInputNum!)
            rightResultNum = rightInputNum ?? 0
        }
        
        let result = leftResultNum + rightResultNum
        allResultLabel.text = String(result)
        
    }
}
