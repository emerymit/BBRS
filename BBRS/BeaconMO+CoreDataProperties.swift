//
//  BeaconMO+CoreDataProperties.swift
//  BBRS
//
//  Created by Mitchell Emery on 2018-01-22.
//  Copyright © 2018 Mitchell Emery. All rights reserved.
//
//

import Foundation
import CoreData


extension BeaconMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BeaconMO> {
        return NSFetchRequest<BeaconMO>(entityName: "Beacon")
    }

    @NSManaged public var uuid: String?
    @NSManaged public var major: Int32
    @NSManaged public var minor: Int32

}
