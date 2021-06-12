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
    
    private func calculate(leftNum: Int, rightNum: Int) -> String {
       let result = leftNum + rightNum
        return String(result)
    }
}

@objc private extension ViewController {
    func tppedCalculateButton() {
        
        var leftResultNum: Int?
        var rightResultNum: Int?
        
        if leftSwitch.isOn == true {
            guard let leftInputNum = Int(leftTextField.text ?? "" ) else { return }
            let minusLeftNum = -1 * leftInputNum
            leftResultLabel.text = String(minusLeftNum)
            leftResultNum = minusLeftNum
        } else {
            let leftInputNum = Int(rightTextField.text ?? "")
            leftResultLabel.text = String(leftInputNum!)
            leftResultNum = leftInputNum
        }
        

        if rightSwitch.isOn == true {
            guard let rightInputNum = Int(rightTextField.text ?? "") else { return }
            let minusRgihtNum = -1 * rightInputNum
            rightResultLabel.text = String(minusRgihtNum)
            rightResultNum = minusRgihtNum
        } else {
            let rightInputNum = Int(rightTextField.text ?? "")
            rightResultLabel.text = String(rightInputNum!)
            rightResultNum = rightInputNum
        }
        
        let result = calculate(leftNum: leftResultNum!, rightNum: rightResultNum!)
        allResultLabel.text = result
        
    }
}
