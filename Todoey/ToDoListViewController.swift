//
//  ViewController.swift
//  Todoey
//
//  Created by arnav on 19/06/19.
//  Copyright © 2019 Gaming Inc. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    let itemArray = ["Find Tommy"
        ,"Bring Him To The Ship"
        ,"Make Him Evil And Give Him The Green Ranger Power"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//               print (itemArray[indexPath.row])
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
               tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
}
tableView.deselectRow(at: indexPath, animated: true)
}
}
