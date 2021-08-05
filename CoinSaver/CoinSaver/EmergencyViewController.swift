//
//  EmergencyViewController.swift
//  CoinSaver
//
//  Created by Nabil Kapasi on 8/4/21.
//

import UIKit

class EmergencyViewController: UIViewController {

    @IBOutlet weak var emergencyGoalInput: UITextField!
    @IBOutlet weak var emergencyLabel: UILabel!
    @IBOutlet weak var emergencyGoalOutput: UILabel!
    @IBOutlet weak var emergencySpentOutput: UILabel!
    @IBOutlet weak var emergencyLogInput: UITextField!
    @IBOutlet weak var emergencyRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func emergencyGoalButtonTapped(_ sender: UIButton) {
        emergencyGoalOutput.text = "Goal: $\(emergencyGoalInput.text!)"
    }
    
    @IBAction func emergencyLogButtonTapped(_ sender: UIButton) {
        emergencySpentOutput.text = "Saved: $\(emergencyLogInput.text!)"
        
        guard let emergencyGoalNumber = Double(emergencyGoalInput.text!) else {
            return
        }
        
        if let emergencyLogNumber = Double(emergencyLogInput.text!) {
            let emergencyRemainingNumber = emergencyGoalNumber - emergencyLogNumber
            emergencyRemainingLabel.text = "$\(emergencyRemainingNumber) out of $\(emergencyGoalNumber) remaining"
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
