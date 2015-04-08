//
//  InterfaceController.swift
//  RWTracker WatchKit Extension
//
//  Created by Panaswift on 4/6/15.
//  Copyright (c) 2015 Panaswift. All rights reserved.
//

import Foundation
import WatchKit

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    var posts = ["Weather","Watch","Heart","Blue","Black"]
    var dateArray = ["15 Dec,2015","17 Dec,2015","20 Dec,2015","25 Dec,2015","31 Dec,2015"]
    var imageArray = [0,1,2,3,4]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.refreshTable()
    }
    
    func refreshTable(){
        table.setNumberOfRows(posts.count, withRowType: "PostRowType")
        for (index,post) in enumerate(posts) {
            if let row = table.rowControllerAtIndex(index) as? PostRowController {
                row.titleLabel.setText(post)
                row.dateLabel.setText(dateArray[index])
                row.imageLogo.setImageNamed("range\(imageArray[index])")
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
    }
    
    override func contextsForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]? {
        let post = ["imagePost": "range\(imageArray[rowIndex])", "titlePost": posts[rowIndex], "datePost": dateArray[rowIndex]]
        let postContent = ["titlePost": posts[rowIndex], "datePost": dateArray[rowIndex]]
        return [post, postContent]
    }

    @IBAction func sortByName() {
        //Incomplete
        posts.sort({(a,b) -> Bool in
            return true
        })
        self.refreshTable()
    }
    
    @IBAction func sortByDate() {
        //Incomplete
        posts.sort({(a,b) -> Bool in
            return true
        })
        self.refreshTable()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
