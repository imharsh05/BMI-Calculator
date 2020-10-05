//
//  ResultViewController.swift
//  BMI Calc
//
//  Copyright © 2020 Harsh Patel. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiResult.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func reCalcBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
