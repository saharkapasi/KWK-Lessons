//
//  OtherViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var otherGoalInput: UITextField!
    @IBOutlet weak var otherLabel: UILabel!
    @IBOutlet weak var otherGoalOutput: UILabel!
    @IBOutlet weak var otherSpentOutput: UILabel!
    @IBOutlet weak var otherLogInput: UITextField!
    @IBOutlet weak var otherRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func otherGoalButtonTapped(_ sender: Any) {
        otherGoalOutput.text = "Goal: $\(otherGoalInput.text!)"
    }
    
    @IBAction func otherLogButtonTapped(_ sender: UIButton) {
        otherSpentOutput.text = "Spent: $\(otherLogInput.text!)"
        
        guard let otherGoalNumber = Double(otherGoalInput.text!) else {
            return
        }
        
        if let otherLogNumber = Double(otherLogInput.text!) {
            let otherRemainingNumber = otherGoalNumber - otherLogNumber
            otherRemainingLabel.text = "$\(otherRemainingNumber) out of $\(otherGoalNumber) remaining"
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
