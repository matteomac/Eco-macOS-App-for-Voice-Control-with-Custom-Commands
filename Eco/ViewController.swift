//
//  ViewController.swift
//  Eco
//
//  Created by matteo barni on 20/01/18.
//  Copyright © 2018 matteo barni. All rights reserved.
//

import Cocoa
class ViewController: NSViewController {

    
//    var prova = VoiceController(coder: coder)
//    var commandList: [String] = [""]
    @IBAction func CHECKCALL(_ sender: Any) {
        
        var request: NSFetchRequest<VoiceCommand> = VoiceCommand.fetchRequest()
        var request2: NSFetchRequest<VoiceCommand> = NSFetchRequest(entityName: "VoiceCommand")
        func grabCommand() {
            
            request2.returnsObjectsAsFaults = false
            do {
                print("ciao")
                var result : NSArray = try! managedObjectContext.fetch(request2) as NSArray
                var list: [VoiceCommand]
                for res in result {
//                    commandList.append(VoiceCommand.value(forKey: "call") as! String)
                    print(res)
//                    list.append(<#T##newElement: VoiceCommand##VoiceCommand#>)
                }
//                print("this is \(commandList)")
            }
            
    }
        grabCommand()
    }
    
    @IBOutlet var listController: NSArrayController!
    
    let fetchCalls = NSFetchRequest<NSManagedObject>(entityName: "VocalCommand")
    
    
    override func viewDidLoad() { 
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @objc let managedObjectContext: NSManagedObjectContext
    
    required init?(coder: NSCoder) {
        self.managedObjectContext = (NSApp.delegate as! AppDelegate).persistentContainer.viewContext
        super.init(coder: coder)
    }

}

