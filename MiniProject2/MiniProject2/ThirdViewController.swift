//
//  ThirdViewController.swift
//  MiniProject2
//
//  Created by Nabil Kapasi on 7/29/21.
//  Copyright © 2021 Sahar Kapasi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var answer2: UILabel!
    @IBOutlet weak var question2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondChoiceA(_ sender: UIButton) {
        answer2.text = "Correct! Good job!"
    }
    
    @IBAction func secondChoiceB(_ sender: UIButton) {
        answer2.text = "Not correct, try again."
    }
    
    @IBAction func secondChoiceC(_ sender: UIButton) {
        answer2.text = "Not correct, try again."
    }
    
    @IBAction func secondChoiceD(_ sender: UIButton) {
        answer2.text = "Not correct, try again."
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
