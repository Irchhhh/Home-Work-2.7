//
//  Person.swift
//  Home Work 2.7
//
//  Created by Ирина on 09.11.2021.
//

import Foundation

struct Persons {
    let firstname: String
    let surname: String
    
    let mail: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstname) \(surname)"
    }
 
}

