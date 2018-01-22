//
//  VoiceCommand+CoreDataClass.swift
//  Eco
//
//  Created by matteo barni on 21/01/18.
//  Copyright © 2018 matteo barni. All rights reserved.
//
//

import Foundation
import CoreData
import Cocoa

@objc(VoiceCommand)
public class VoiceCommand: NSManagedObject {
 
    
//    put convenience when init is not obliged
    convenience init() {
        let context = (NSApp.delegate as! AppDelegate).persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "VoiceCommand", in: context)
        
        
//        this to make every value managed by the coredata
        self.init(entity: entity!, insertInto: context)
}
}
