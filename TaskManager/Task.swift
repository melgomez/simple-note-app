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
    dynamic var date : NSDate = NSDate()
}
