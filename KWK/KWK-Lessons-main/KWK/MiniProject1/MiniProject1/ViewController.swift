//
//  ViewController.swift
//  MiniProject1
//
//  Created by Sahar Kapasi on 7/28/21.
//

import UIKit

class ViewController: UIViewController {

var facts = ["I speak four different languages... somewhat fluently.", "I love to paint, read, and cook!", "Sandboarding is super high on my bucket list!", "I'm an avid TV show watcher...it's kind of a problem 📺","I'm kind of a master at foosball.", "I have adorable five koi fish that live in a pond in my backyard 🐟", "I love to travel 🌎", "I try my best to keep plants alive 🌿"]

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


