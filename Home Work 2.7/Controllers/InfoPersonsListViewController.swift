//
//  InfoPersonsListViewController.swift
//  Home Work 2.7
//
//  Created by Ирина on 10.11.2021.
//

import UIKit

class InfoPersonsListTableViewController: UITableViewController {
    var rowsSections = 2
    private var personsList: [Persons] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        personsList = DataManager.personsList
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rowsSections
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoList", for: indexPath)
        var contacts = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            contacts.text = personsList[indexPath.row].phoneNumber
        } else {
            contacts.text = personsList[indexPath.row].mail
        }
        
        cell.contentConfiguration = contacts
        
        return cell
    }
}
