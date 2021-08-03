//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Sahar Kapasi on 8/2/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoCD] = []
    
//    func createToDo () -> [ToDoClass] {
//        let swiftToDo = ToDoClass()
//        swiftToDo.description = "Learn Swift"
//        swiftToDo.important = true
//
//        let dogToDo = ToDoClass ()
//        dogToDo.description = "Walk the Dog"
//        //important set to false by default
//
//        return [swiftToDo, dogToDo]
//    }
    
    func getToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
           
                if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                    
                        listOfToDo = dataFromCoreData
                    tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//     listOfToDo = createToDo()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

      
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo[indexPath.row]
        cell.textLabel?.text = eachToDo.descriptionInCD
        
        if eachToDo.importantInCD {
            cell.textLabel?.text = "❗️" + eachToDo.descriptionInCD!
        } else {
            cell.textLabel?.text = eachToDo.descriptionInCD
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // this gives a single ToDo
        let eachToDo = listOfToDo[indexPath.row]
        
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }
  
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as? AddToDoViewController {
            nextAddToDoVC.previousToDoTVC = self
    }
        
        if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
            if let chosenToDo = sender as? ToDoClass {
                nextCompletedToDoVC.selectedToDo = chosenToDo
                nextCompletedToDoVC.previousToDoTVC = self
            }
        }
}
}
