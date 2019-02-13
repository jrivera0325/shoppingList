//
//  ViewController.swift
//  shoppingList
//
//  Created by Julio Rivera on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//
//Test
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var newItemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let item1 = Item(name: "Milk")
        let item2 = Item(name: "Eggs")
        items = [item1, item2]
        let item3 = Item(name: "Bread")
        items.append(item3)
        
    }

    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let currentItemName = items[indexPath.row].name
        cell.textLabel?.text = currentItemName
        return cell
    }
    
}

