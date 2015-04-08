//
//  PostDetailsController.swift
//  RWTracker
//
//  Created by Panaswift on 4/6/15.
//  Copyright (c) 2015 Panaswift. All rights reserved.
//

import Foundation
import WatchKit

class PostDetailsController: WKInterfaceController {

    @IBOutlet weak var imageLogo: WKInterfaceImage!
    @IBOutlet weak var titleText: WKInterfaceLabel!
    @IBOutlet weak var date: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let post = context as? [String: String] {
            imageLogo.setImageNamed(post["imagePost"])
            titleText.setText(post["titlePost"])
            date.setText(post["datePost"])
        }
    }
    
    override func willActivate() {
        super.willActivate()
        
    }
}
