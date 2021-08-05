//
//  StudentLoansViewController.swift
//  CoinSaver
//
//  Created by Nabil Kapasi on 8/4/21.
//

import UIKit

class StudentLoansViewController: UIViewController {

    @IBOutlet weak var studentLoansGoalInput: UITextField!
    @IBOutlet weak var studentLoansLabel: UILabel!
    @IBOutlet weak var studentLoansGoalOutput: UILabel!
    @IBOutlet weak var studentLoansSpentOutput: UILabel!
    @IBOutlet weak var studentLoansLogInput: UITextField!
    @IBOutlet weak var studentLoansRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func studentLoansGoalButtonTapped(_ sender: UIButton) {
        studentLoansGoalOutput.text = "Goal: $\(studentLoansGoalInput.text!)"
    }
    
    @IBAction func studentLoansLogButtonTapped(_ sender: UIButton) {
        studentLoansSpentOutput.text = "Saved: $\(studentLoansLogInput.text!)"
        
        guard let studentLoansGoalNumber = Double(studentLoansGoalInput.text!) else {
            return
        }
        
        if let studentLoansLogNumber = Double(studentLoansLogInput.text!) {
            let studentLoansRemainingNumber = studentLoansGoalNumber - studentLoansLogNumber
            studentLoansRemainingLabel.text = "$\(studentLoansRemainingNumber) out of $\(studentLoansGoalNumber) remaining"
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
