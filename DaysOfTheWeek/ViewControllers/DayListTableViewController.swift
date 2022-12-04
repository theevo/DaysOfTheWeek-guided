//
//  DayListTableViewController.swift
//  DaysOfTheWeek
//
//  Created by Theo Vora on 12/3/22.
//

import UIKit

class DayListTableViewController: UITableViewController {
    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DayController.daysOfTheWeek.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = DayController.daysOfTheWeek[indexPath.row].name
        
        // DEPRECATED
//        cell.textLabel?.text = day
        
        // THE NEW WAY iOS 15+
        
        var content = cell.defaultContentConfiguration()

        // Configure content.
        content.image = UIImage(systemName: "star")
        content.text = day

        // Customize appearance.
        content.imageProperties.tintColor = .purple

        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO
        
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? DayDetailViewController
            else { return }
            
            let dayToSend = DayController.daysOfTheWeek[indexPath.row]
            
            destination.day = dayToSend
        }
    }
}
