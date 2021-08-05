//
//  SavingsViewController.swift
//  CoinSaver
//
//  Created by Nabil Kapasi on 8/4/21.
//

import UIKit

class SavingsViewController: UIViewController {

    @IBOutlet weak var savingsGoalInput: UITextField!
    @IBOutlet weak var savingsLabel: UILabel!
    @IBOutlet weak var savingsGoalOutput: UILabel!
    @IBOutlet weak var savingsSpentOutput: UILabel!
    @IBOutlet weak var savingsLogInput: UITextField!
    @IBOutlet weak var savingsRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savingsGoalButtonTapped(_ sender: UIButton) {
        savingsGoalOutput.text = "Goal: $\(savingsGoalInput.text!)"
    }
    @IBAction func savingsLogButtonTapped(_ sender: UIButton) {
        savingsSpentOutput.text = "Saved: $\(savingsLogInput.text!)"
        
        guard let savingsGoalNumber = Double(savingsLogInput.text!) else {
            return
        }
        
        if let savingsLogNumber = Double(savingsLogInput.text!) {
            let savingsRemainingNumber = savingsGoalNumber - savingsLogNumber
            savingsRemainingLabel.text = "$\(savingsRemainingNumber) out of $\(savingsGoalNumber) remaining"
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
