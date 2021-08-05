//
//  ActivitiesViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class ActivitiesViewController: UIViewController {

    @IBOutlet weak var activitiesGoalInput: UITextField!
    @IBOutlet weak var activitiesLabel: UILabel!
    @IBOutlet weak var activitiesGoalOutput: UILabel!
    @IBOutlet weak var activitiesSpentOutput: UILabel!
    @IBOutlet weak var activitiesLogInput: UITextField!
    @IBOutlet weak var activitiesRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func activitiesGoalButtonTapped(_ sender: UIButton) {
        activitiesGoalOutput.text = "Goal: $\(activitiesGoalInput.text!)"
    }
    
    @IBAction func activitiesLogButtonTapped(_ sender: UIButton) {
        activitiesSpentOutput.text = "Spent: $\(activitiesLogInput.text!)"
        
        guard let activitiesGoalNumber = Double(activitiesGoalInput.text!) else {
            return
        }
        
        if let activitiesLogNumber = Double(activitiesLogInput.text!) {
            let activitiesRemainingNumber = activitiesGoalNumber - activitiesLogNumber
            activitiesRemainingLabel.text = "$\(activitiesRemainingNumber) out of $\(activitiesGoalNumber) remaining"
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
