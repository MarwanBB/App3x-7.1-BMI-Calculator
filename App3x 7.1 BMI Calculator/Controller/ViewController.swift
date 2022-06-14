//
//  ViewController.swift
//  App3x 7.1 BMI Calculator
//
//  Created by Marwan Elbahnasawy on 24/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let bmi = BMI()
    var bmiValue : Float!
    var adviceValue : String!

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderUsed(_ sender: UISlider) {
        heightLabel.text = "\((sender.value*100).rounded()/100) m"
    }
    
    @IBAction func weightSliderUsed(_ sender: UISlider) {
        weightLabel.text = "\((sender.value*100).rounded()/100) kg"
    }
    
    
    
    
    @IBAction func bmiClicked(_ sender: UIButton) {
        bmiValue = bmi.calculateBMI(weight: weightSliderOutlet.value, height: heightSliderOutlet.value)
        adviceValue = bmi.getAdvice(bmi: bmiValue)
      performSegue(withIdentifier: "segueID", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! OutputController
        destinationVC.resultText = "You BMI = \(String(bmiValue)) !"
        destinationVC.adviceText = adviceValue
    }
    
}

