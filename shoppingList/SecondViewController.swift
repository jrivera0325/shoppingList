//
//  SecondViewController.swift
//  shoppingList
//
//  Created by Julio Rivera on 2/15/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var passedItem: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = passedItem.name
        label.text = "quantity: \(passedItem.quantity)"

       
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
