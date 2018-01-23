//
//  Reminder.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import Foundation


class Reminder {
    var reminderTitle: String
    var reminderBody: String
    var reminderBeacon: BeaconMO
    
    init(title: String, body: String, beacon: BeaconMO){
        //initialize the reminder
        self.reminderTitle = title
        self.reminderBody = body
        self.reminderBeacon = beacon
    }
    
}
