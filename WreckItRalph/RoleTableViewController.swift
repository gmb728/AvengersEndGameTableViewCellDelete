//
//  RoleTableViewController.swift
//   WreckItRalph
//
// Created by Chang Sophia on 11/26/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit
class RoleTableViewController: UITableViewController {
   
      var roles = [Role]()
  
   
    //unwind
    @IBAction func unwindToRoleTableView(segue: UIStoryboardSegue) {
        if let controller = segue.source as? EditRoleTableViewController,
            let role = controller.role {
            roles.insert(role, at: 0)
            let indexPath = IndexPath(row: 0, section: 0)
            tableView.insertRows(at: [indexPath], with: .automatic)
            Role.saveToFile(roles: roles)
        }
    }
   
    
    
    //show image and label& read on RoleTableView
    
    override func viewDidLoad() {
        
      if let roles = Role.readRolesFromFile() {
            self.roles = roles
            
    
        }
        
    }
    
    //dynamic count row of number
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return roles.count
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "roleCell", for: indexPath)
        let role = roles[indexPath.row]
        cell.textLabel?.text = role.name
       
        return cell
        }
    
    //delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        roles.remove(at: indexPath.row)
        tableView.reloadData()
        
    }
    
}

