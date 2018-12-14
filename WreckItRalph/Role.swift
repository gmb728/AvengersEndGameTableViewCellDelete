//
//  Role.swift
//  WreckItRalph
//
// Created by Chang Sophia on 11/26/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//
import Foundation

struct Role: Codable {
    
    let number: String
    let name: String
    let movie: String
    let weapon: String
    let pet: String
   
    //save
    static func saveToFile(roles:[Role]){
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(roles){
            let userDefault = UserDefaults.standard
            userDefault.set(data, forKey: "roles")
        }
    }
    //write
    static func readRolesFromFile() -> [Role]? {
        let userDefault = UserDefaults.standard
        let propertyDecorder = PropertyListDecoder()
        if let data = userDefault.data(forKey: "roles"), let roles = try?
        propertyDecorder.decode([Role].self, from:data){
        return roles
      } else {
        return nil
        
    }
    }
}
