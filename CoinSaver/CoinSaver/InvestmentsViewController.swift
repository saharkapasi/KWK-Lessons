//
//  InvestmentsViewController.swift
//  CoinSaver
//
//  Created by Nabil Kapasi on 8/4/21.
//

import UIKit

class InvestmentsViewController: UIViewController {

    @IBOutlet weak var investmentsGoalInput: UITextField!
    @IBOutlet weak var investmentsLabel: UILabel!
    @IBOutlet weak var investmentsGoalOutput: UILabel!
    @IBOutlet weak var investmentsSpentOutput: UILabel!
    @IBOutlet weak var investmentsLogInput: UITextField!
    @IBOutlet weak var investmentsRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func investmentsGoalButtonTapped(_ sender: UIButton) {
        investmentsGoalOutput.text = "Goal: $\(investmentsGoalInput.text!)"
    }
    
    @IBAction func investmentsLogButtonTapped(_ sender: UIButton) {
        investmentsSpentOutput.text = "Saved: $\(investmentsGoalInput.text!)"
        
        guard let investmentsGoalNumber = Double(investmentsGoalInput.text!) else {
            return
        }
        
        if let investmentsLogNumber = Double(investmentsLogInput.text!) {
            let investmentsRemainingNumber = investmentsGoalNumber - investmentsLogNumber
            investmentsRemainingLabel.text = "$\(investmentsRemainingNumber) out of $\(investmentsGoalNumber) remaining"
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
