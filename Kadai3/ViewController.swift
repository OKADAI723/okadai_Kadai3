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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.addTarget(self, action: #selector(tppedCalculateButton), for: .touchDragInside)
    }
}

@objc private extension ViewController {
    func tppedCalculateButton() {
        if leftSwitch.isOn == true {
            
        } else {
            
        }
        
    }
}
