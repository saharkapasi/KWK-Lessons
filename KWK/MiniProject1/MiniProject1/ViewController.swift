//
//  ViewController.swift
//  MiniProject1
//
//  Created by Sahar Kapasi on 7/28/21.
//

import UIKit

class ViewController: UIViewController {

var facts = ["fun fact 1", "fun fact 2", "fun fact 3"]
    
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func funFactTapped(_ sender: Any) {
        let randomIndex = Int.random(in: 0..<facts.count)
        let randomFact = facts[randomIndex]
        
        funFactLabel.text = randomFact
    }
    
}

