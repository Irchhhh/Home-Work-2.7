//
//  DataManager.swift
//  Home Work 2.7
//
//  Created by Ирина on 09.11.2021.
//

import Foundation
class DataManager {
    
    let firstnames = [
        
        "John",  "Michael",
        "Barbara", "Patricia",
        "Thomas", "Olivia",
        "Emma", "Ava",
        "Sophia", "Isabella",
        "Charlotte", "Amelia",
        "Mia"
    ]
    
    let surnames = [
        
        "Smith", "Williams",
        "Brown", "Miller",
        "Anderson", "Jones",
        "Campbell", "Carey",
        "Carrington","Carroll",
        "Carter", "Benson",
        "Fleming"
    ]
    
    let phoneNumbers = [
        
       " 8898823457", "1738475085",
        "8437857304", "8917478956",
        "8765488234", "8943742515",
        "8732647328", "6666728393",
        "5364562363", "9999888263",
        "8437566626", "9900983746",
        "6473858493"
        
    ]
    
    let mails = [
        
        "sdzk@mai.ru", "rrrr@gmail.com",
        "ffffd@mail.ru", "pppp@mail.com",
        "mmmm@mail.ru", "rrer@gmail.com",
        "ttftr@mail.ru", "tte45@gmail.com",
        "nswhb445@mail.com", "yuhs31@mail.ru",
        "ufge@gmail.com", "opsJ6@MAIL.ru",
        "ffcrdr@mail.com"
    ]
    
    static var personsList: [Persons] = []
    static func getPersons() -> [Persons] {
        return personsList
    }
}


extension DataManager {
    
    static func persons() {
        let dataManager = DataManager()
        var personsList = DataManager.personsList
        
        let firstnames = dataManager.firstnames.shuffled()
        let surnames = dataManager.surnames.shuffled()
        
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let mails = dataManager.mails.shuffled()
        
        for index in 0 ..< dataManager.surnames.count {
            let person = Persons(firstname: firstnames[index], surname: surnames[index], mail: mails[index], phoneNumber: phoneNumbers[index])
            
            personsList.append(person)
            DataManager.personsList.append(person)
        }
    }
}
