//
//  EditRobleTableViewController.swift
//  SendData
//
//  Created by Chang Sophia on 12/10/18.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class EditRobleTableViewController: UITableViewController {
    var roles = Role?
    @IBAction func unwind(segue: UIStoryboard){
 //animation
        if let source = segue.source as? EditRobleTableViewController, let roles = source.role {
            roles.insert(role, at: 0)
            let indexPath = IndexPath(row:0, section: 0)
            tableView.insertRows(at: 0)
            tableView.reloadData()
        }
        
        <#code#>
    }
    
    override func tableView(_tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt IndexPath: IndexPath){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

  

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nubmer = numberTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let movie = movieTextField.text ?? ""
        let weapon = weaponTextField.text ?? ""
        let pet = petTextField.text ?? ""
        
        role = Role(number: number, name: name, moive: movie, weapon: weapon, pet pet )

    }
}
  
