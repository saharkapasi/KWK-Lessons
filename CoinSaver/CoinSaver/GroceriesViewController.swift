//
//  GroceriesViewController.swift
//  CoinSaver
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class GroceriesViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var groceriesGoalInput: UITextField!
    @IBOutlet weak var groceriesGoalDisplay: UITextView!
    @IBOutlet weak var groceriesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groceriesGoalInput.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func groceriesGoalButtonTapped(_ sender: UIButton) {
        groceriesGoalDisplay.text = "Goal: $\(groceriesGoalInput.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        groceriesGoalInput.resignFirstResponder()
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
