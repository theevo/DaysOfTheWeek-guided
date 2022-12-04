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
        
        cell.textLabel?.text = day
        
        return cell
    }
}
