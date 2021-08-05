//
//  RentViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class RentViewController: UIViewController {

    @IBOutlet weak var rentGoalInput: UITextField!
    @IBOutlet weak var rentLabel: UILabel!
    @IBOutlet weak var rentGoalOutput: UILabel!
    @IBOutlet weak var rentLogInput: UITextField!
    @IBOutlet weak var rentSpentOutput: UILabel!
    @IBOutlet weak var rentRemainingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rentGoalButtonTapped(_ sender: UIButton) {
        rentGoalOutput.text = "Goal: $\(rentGoalInput.text!)"
    }
    
    @IBAction func rentLogButtonTapped(_ sender: UIButton) {
        rentSpentOutput.text = "Spent: $\(rentLogInput.text!)"
        
        guard let rentGoalNumber = Double(rentGoalInput.text!) else { return  }
        
        if let rentLogNumber = Double(rentLogInput.text!) {
            let rentRemainingNumber = rentGoalNumber - rentLogNumber
            rentRemainingLabel.text = "$\(rentRemainingNumber) out of $\(rentGoalNumber) remaining"
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

