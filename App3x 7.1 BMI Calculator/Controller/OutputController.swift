//
//  OutputController.swift
//  App3x 7.1 BMI Calculator
//
//  Created by Marwan Elbahnasawy on 24/05/2022.
//

import UIKit

class OutputController : UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var resultText : String!
    var adviceText : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultText
        adviceLabel.text = adviceText
    }
    
    @IBAction func recalculateClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
