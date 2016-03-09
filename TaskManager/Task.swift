//
//  Task.swift
//  TaskManager
//
//  Created by Mel Gomez on 09/03/2016.
//  Copyright © 2016 meldarrelgomez. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    dynamic var title : String = ""
    dynamic var details : String = ""
    dynamic var date : NSDate
    
    
    init(title: String, details: String, date: NSDate) {
        
        self.title = title
        self.details = details
        self.date = date
        
        super.init()
    }
    
    convenience required init() {
        self.init()
    }
}
