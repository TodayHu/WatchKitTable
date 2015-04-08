//
//  PostContentController.swift
//  RWTracker
//
//  Created by Panaswift on 4/7/15.
//  Copyright (c) 2015 Panaswift. All rights reserved.
//

import Foundation
import WatchKit

class PostContentController: WKInterfaceController {

    @IBOutlet weak var titleLable: WKInterfaceLabel!
    @IBOutlet weak var contentLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let post = context as? [String: String] {
            contentLabel.setText(post["datePost"])
            titleLable.setText(post["titlePost"])
        }
    }
    
    override func willActivate() {
        super.willActivate()
        
    }
}
