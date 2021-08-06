//
//  GroceriesViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class GroceriesViewController: UIViewController {

    @IBOutlet weak var groceriesGoalInput: UITextField!
    @IBOutlet weak var groceriesLabel: UILabel!
    @IBOutlet weak var groceriesGoalOutput: UILabel!
    @IBOutlet weak var groceriesLogInput: UITextField!
    @IBOutlet weak var groceriesSpentOutput: UILabel!
    @IBOutlet weak var groceriesRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func groceriesGoalButtonTapped(_ sender: UIButton) {
        groceriesGoalOutput.text = "Goal: $\(groceriesGoalInput.text!)"
    }
    
    @IBAction func groceriesLogButtonTapped(_ sender: UIButton) {
        groceriesSpentOutput.text = "Spent: $\( groceriesLogInput.text!)"
        
        guard let groceriesGoalNumber = Double(groceriesGoalInput.text!) else {
            return
            }
        
        if let groceriesLogNumber = Double(groceriesLogInput.text!) {
            let groceriesRemainingNumber = groceriesGoalNumber - groceriesLogNumber
            
            groceriesRemainingLabel.text = "$\(groceriesRemainingNumber) out of $\(groceriesGoalNumber) remaining"
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

