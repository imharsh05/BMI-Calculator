//
//  CalculateViewController.swift
//  BMI Calc
//
//  Copyright © 2020 Harsh Patel. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var mainCalculator = MainCalculator()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func CalcBtnPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        mainCalculator.calculatorBMI(height: height, weight: weight)
        performSegue(withIdentifier: "Result", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Result" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = mainCalculator.getBMIValue()
            destinationVC.advice = mainCalculator.getAdvice()
            destinationVC.color = mainCalculator.getColor()
        }
    }
    
}
