//
//  EditRoleTableViewController.swift
//  SendData
//
//  Created by Chang Sophia on 12/11/18.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit


class EditRoleTableViewController: UITableViewController {
    var role: Role?
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var weaponTextField: UITextField!
    @IBOutlet weak var petTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let number = numberTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let movie = movieTextField.text ?? ""
        let weapon = weaponTextField.text ?? ""
        let pet = petTextField.text ?? ""
        role = Role( number: number, name: name, movie: movie, weapon: weapon , pet: pet)
        
        
    }
   
    
 
}


