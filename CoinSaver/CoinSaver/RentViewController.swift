//
//  RentViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class RentViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var rentGoalInput: UITextField!
    @IBOutlet weak var rentGoalDisplay: UITextView!
    @IBOutlet weak var rentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rentGoalInput.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rentGoalButtonTapped(_ sender: UIButton) {
        rentGoalDisplay.text = "Goal: $\(rentGoalInput.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        rentGoalInput.resignFirstResponder()
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

extension ViewController: UITextFieldDelegate {
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
