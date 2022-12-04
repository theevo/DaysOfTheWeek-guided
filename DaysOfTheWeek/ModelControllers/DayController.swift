//
//  DayController.swift
//  DaysOfTheWeek
//
//  Created by Theo Vora on 12/3/22.
//

import Foundation

class DayController {
    
    static var daysOfTheWeek: [Day] {
        
        let sunday = Day(name: "Sunday", origin: "Sunday Emperor Constantine adopted the seven-day week for official use in AD 321, making the Day of the Sun the first day of the week.")
        
        let monday = Day(name: "Monday", origin: "Monday In the international standard ISO 8601, Monday, or Day of the Moon, is treated as the first day of the week.")
        
        let tuesday = Day(name: "Tuesday", origin: "Tuesday was named for the Germanic god of war, Tiu.")
        
        let wednesday = Day(name: "Wednesday", origin: "Wednesday was named for Woden (Odin), the supreme creator among the Norse gods.")
        
        let thursday = Day(name: "Thursday", origin: "Thursday was named for Thor, the Norse god of thunder")
        
        let friday = Day(name: "Friday", origin: "Friday was named for Frigga, the Norse goddess of marital love and the hearth.")
        
        let saturday = Day(name: "Saturday", origin: "Saturday was named after the Roman god Saturn.")
        
        return [sunday, monday, tuesday, wednesday, thursday, friday, saturday]
    }
}
