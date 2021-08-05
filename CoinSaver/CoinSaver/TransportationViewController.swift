//
//  TransportationViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class TransportationViewController: UIViewController {

    @IBOutlet weak var transportationGoalInput: UITextField!
    @IBOutlet weak var transportationLabel: UILabel!
    @IBOutlet weak var transportationGoalOutput: UILabel!
    @IBOutlet weak var transportationSpentOutput: UILabel!
    @IBOutlet weak var transportationLogInput: UITextField!
    @IBOutlet weak var transportationRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func transportationGoalButtonTapped(_ sender: UIButton) {
        transportationGoalOutput.text = "Goal: $\(transportationGoalInput.text!)"
    }
    
    @IBAction func transportationLogButtonTapped(_ sender: UIButton) {
        transportationSpentOutput.text = "Spent: $\(transportationLogInput.text!)"
        
        guard let transportationGoalNumber = Double(transportationGoalInput.text!) else {
            return
        }
        
        if let transportationLogNumber = Double(transportationLogInput.text!) {
            let transportationRemainingNumber = transportationGoalNumber - transportationLogNumber
            transportationRemainingLabel.text = "$\(transportationRemainingNumber) out of $\(transportationGoalNumber) remaining"
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
