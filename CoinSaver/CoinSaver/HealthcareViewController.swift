//
//  HealthcareViewController.swift
//  CoinSaver
//
//  Created by Nabil Kapasi on 8/4/21.
//

import UIKit

class HealthcareViewController: UIViewController {

    @IBOutlet weak var healthcareGoalInput: UITextField!
    @IBOutlet weak var healthcareLabel: UILabel!
    @IBOutlet weak var healthcareGoalOutput: UILabel!
    @IBOutlet weak var healthcareSpentOutput: UILabel!
    @IBOutlet weak var healthcareLogInput: UITextField!
    @IBOutlet weak var healthcareRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func healthcareGoalButtonTapped(_ sender: UIButton) {
        healthcareGoalOutput.text = "Goal: $\(healthcareGoalInput.text!)"
    }
    
    @IBAction func healthcareLogButtonTapped(_ sender: UIButton) {
        healthcareSpentOutput.text = "Saved: $\(healthcareLogInput.text!)"
        
        guard let healthcareGoalNumber = Double(healthcareGoalInput.text!) else {
            return
        }
        
        if let healthcareLogNumber = Double(healthcareLogInput.text!) {
            let healthcareRemainingNumber = healthcareGoalNumber - healthcareLogNumber
            healthcareRemainingLabel.text = "$\(healthcareRemainingNumber) out of $\(healthcareGoalNumber) remaining"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
