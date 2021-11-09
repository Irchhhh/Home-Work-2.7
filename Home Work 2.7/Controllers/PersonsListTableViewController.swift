//
//  PersonsListTableViewController.swift
//  Home Work 2.7
//
//  Created by Ирина on 09.11.2021.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    private var personsList: [Persons] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataManager.persons()
        personsList = DataManager.getPersons()
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
        let persons = personsList[indexPath.row]
        var contacts = cell.defaultContentConfiguration()
        contacts.text = persons.fullName
        cell.contentConfiguration = contacts
        return cell
    }
    

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.contact = personsList[indexPath.row]
        
    }
    
}



