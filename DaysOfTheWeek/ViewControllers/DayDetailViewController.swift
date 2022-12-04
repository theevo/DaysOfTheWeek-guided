//
//  DayDetailViewController.swift
//  DaysOfTheWeek
//
//  Created by Theo Vora on 12/3/22.
//

import UIKit

class DayDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var dayOriginLabel: UILabel!
    
    // MARK: - Properties
    
    var day: Day? // landing pad
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    
    // MARK: - Helpers
    
    func updateViews() {
        dayNameLabel.text = day?.name
        dayOriginLabel.text = day?.origin
    }
    
}
