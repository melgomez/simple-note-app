//
//  AddTaskViewController.swift
//  TaskManager
//
//  Created by Mel Gomez on 09/03/2016.
//  Copyright © 2016 meldarrelgomez. All rights reserved.
//

import UIKit
import RealmSwift

class AddTaskViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var detailsTextView: UITextView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func saveTask(sender: AnyObject) {
        let realm = try! Realm()
        let task = Task()
        
        task.title = titleTextField.text!
        task.details = detailsTextView.text!
        task.date = datePicker.date
        
        try! realm.write() {
            realm.add(task)
        }
        
//        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.detailsTextView.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).CGColor
        self.detailsTextView.layer.borderWidth = 1.0
        self.detailsTextView.layer.cornerRadius = 5
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        
        super.touchesBegan(touches,withEvent:event)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//     MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        
        let nextView = segue.destinationViewController as! TasksViewController
        nextView.tableView.reloadData()
    }

    
    
}
