//
//  Beacon.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import Foundation

class Beacon{
    var uuid: String?
    var major: Int
    var minor: Int
    
        init(uuid: String, maj: Int, min: Int){
            //initialize the beacon
            self.uuid = uuid
            self.major = maj
            self.minor = min
    
        }
}
