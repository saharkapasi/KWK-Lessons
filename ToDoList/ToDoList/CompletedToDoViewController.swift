//
//  CompletedToDoViewController.swift
//  ToDoList
//
//  Created by Sahar Kapasi on 8/3/21.
//

import UIKit

class CompletedToDoViewController: UIViewController {
    
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo = ToDoCD?

    @IBOutlet weak var toDoDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoDisplay.text = selectedToDo?.descriptionInCD

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
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
