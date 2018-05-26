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
    
    static let shared = VoiceCommand()
    
    class func getContext() -> NSManagedObjectContext{
        let appDelegate = NSApp.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    class func fetchObject() -> [VoiceCommand]? {
        let context = getContext()
        var list: [VoiceCommand]? = nil
        do {
            list = try context.fetch(VoiceCommand.fetchRequest())
            return list
        }catch {
            return list
        }
    }
    
//    put convenience when init is not obliged
    convenience init() {
        let context = (NSApp.delegate as! AppDelegate).persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "VoiceCommand", in: context)
        
        
//        this to make every value managed by the coredata
        self.init(entity: entity!, insertInto: context)
}
}
