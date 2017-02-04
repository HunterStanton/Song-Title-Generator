//
//  InterfaceController.swift
//  Song Title Generator WatchKit Extension
//
//  Created by Hunter Stanton on 2/4/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    // The adjective portion of our song title
    @IBOutlet var AdjectiveLabel: WKInterfaceLabel!
    
    // The noun portion of our song title
    @IBOutlet var NounLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func GenerateButtonPressed() {
        // A bit long winded but it works fine.
        // Could easily put the random logic into its own class
        AdjectiveLabel.setText(TitleDictionary.adjectives[Int(arc4random_uniform(UInt32(TitleDictionary.adjectives.count)))])
        NounLabel.setText(TitleDictionary.nouns[Int(arc4random_uniform(UInt32(TitleDictionary.nouns.count)))])
    }

}
