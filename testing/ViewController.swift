//
//  ViewController.swift
//  testing
//
//  Created by Anil on 22/07/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class Person: RLMObject {
    dynamic var name = ""
    dynamic var birthdate = NSDate(timeIntervalSince1970: 1)
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let author = Person()
        author.name = "David Foster Wallace"
        
        // Get the default Realm
        let realm = RLMRealm.defaultRealm()
        
        // Add to the Realm inside a transaction
        realm.beginWriteTransaction()
        realm.addObject(author)
        realm.commitWriteTransaction()
        
        // Print all Persons
        println(Person.allObjects())
    }
}

