//
//  VoiceCommand+CoreDataProperties.swift
//  Eco
//
//  Created by matteo barni on 22/01/18.
//  Copyright © 2018 matteo barni. All rights reserved.
//
//

import Foundation
import CoreData


extension VoiceCommand {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VoiceCommand> {
        return NSFetchRequest<VoiceCommand>(entityName: "VoiceCommand")
    }

    @NSManaged public var alt: Bool
    @NSManaged public var answer: String?
    @NSManaged public var call: String?
    @NSManaged public var cmd: Bool
    @NSManaged public var ctrl: Bool
    @NSManaged public var key: String?
    @NSManaged public var shift: Bool

}
