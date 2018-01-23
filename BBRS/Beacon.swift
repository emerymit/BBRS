//
//  Beacon.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import Foundation


class Beacon {
    
    var UUID: String
    var Major: CLBeaconMajorValue
    var Minor: CLBeaconMinorValue
    
    init(uuid: String, maj: Int, min: Int){
        //initialize the beacon
        self.UUID = uuid
        self.Major = CLBeaconMajorValue(maj)
        self.Minor = CLBeaconMinorValue(min)
        
    }
    
    
}
