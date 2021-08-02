//
//  SecondViewController.swift
//  MiniProject2
//
//  Created by Sahar Kapasi on 7/29/21.
//  Copyright © 2021 Sahar Kapasi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var question1: UILabel!
    @IBOutlet weak var answer1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstChoiceA(_ sender: UIButton) {
        answer1.text = "Not correct, try again."
    }
    
    @IBAction func firstChoiceB(_ sender: UIButton) {
        answer1.text = "Correct! Good job!"
    }
    
    @IBAction func firstChoiceC(_ sender: UIButton) {
        answer1.text = "Not correct, try again."
    }
    
    @IBAction func firstChoiceD(_ sender: UIButton) {
        answer1.text = "Not correct, try again."
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
