//
//  PersonDetailsViewController.swift
//  Home Work 2.7
//
//  Created by Ирина on 09.11.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Persons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = String(contact.phoneNumber)
        emailLabel.text = contact.mail
        title = contact.fullName
        
    }
}
