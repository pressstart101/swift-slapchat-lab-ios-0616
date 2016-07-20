//
//  AddMessageViewController.swift
//  SlapChat
//
//  Created by Flatiron School on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData
class AddMessageViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBAction func saveButton(sender: AnyObject) {
        let store = DataStore()
        
        let message777 = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: store.managedObjectContext) as! Message
        message777.content = textField.text
        message777.createAt = NSDate()
        store.saveContext()
        store.fetchData()
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
