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
        let item2 = Item(name: "Egss")
        items = [item1, item2]
        
    }

    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }
    
}

