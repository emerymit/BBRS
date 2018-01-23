//
//  Beacon.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//

import Foundation

class Beacon{
    var name: String?
    var uuid: String?
    var major: Int
    var minor: Int
    
    init(nme: String, uuid: String, maj: Int, min: Int){
            //initialize the beacon
            self.name = nme
            self.uuid = uuid
            self.major = maj
            self.minor = min
    
        }
}
