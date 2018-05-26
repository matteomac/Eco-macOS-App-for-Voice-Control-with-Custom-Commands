//
//  Voice.swift
//  Eco
//
//  Created by matteo barni on 21/01/18.
//  Copyright © 2018 matteo barni. All rights reserved.
//

import Foundation
import Cocoa
import CoreData


class VoiceController: NSSpeechRecognizer {
//    var appDel:AppDelegate = (NSApp.delegate as! AppDelegate)
//    var content: NSManagedObjectContext = appDel.managedObjectContext

    @objc let managedObjectContext: NSManagedObjectContext
    
    required init?(coder: NSCoder) {
        self.managedObjectContext = (NSApp.delegate as! AppDelegate).persistentContainer.viewContext
        super.init()
    }
    
//    var request = NSFetchRequest<VoiceCommand>(entityName: "VoiceCommand")
    var request: NSFetchRequest<VoiceCommand> = VoiceCommand.fetchRequest()
    var request2: NSFetchRequest<VoiceCommand> = NSFetchRequest(entityName: "VoiceCommand")
    func grabCommand() {
        request.returnsObjectsAsFaults = false
        do {
            let result : NSArray = try! managedObjectContext.fetch(request) as NSArray
            for res in result {
                print(res)
            }
        }
        
    }
    
}

