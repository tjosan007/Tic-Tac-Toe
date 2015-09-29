//
//  ViewController.swift
//  TicTacToe
//
//  Created by TJ on 2015-09-24.
//  Copyright © 2015 TJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionViews: Array<UIButton>?

    // Define the current turn
    var oTurn = true
    
    var turnsArray:[[String]] = [[String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for x in collectionViews! {
            x.addTarget(self, action: "buttonTapped",
                forControlEvents: .TouchUpInside)
        }
        
        inits()
        
        
    }
    
    func inits() {
        for var i = 0; i < 3; i++ {
           var array = [String]()
            for var i = 0; i < 3; i++ {
                array.append("")
            }
            turnsArray.append(array)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // button.addTarget(self, action: "buttonTapped", forControlEvents: .TouchUpInside)

    func buttonTapped(sender: UIButton?) {
//        // Called when user taps a button
//        
//        
//        if oTurn {
//            sender?.setImage(UIImage(named: "o.png"), forState: UIControlState.Normal)
//            clicked("o", chars: sender!.titleLabel!.text!.characters)
//            oTurn = false
//        } else {
//            sender?.setImage(UIImage(named: "X.png"), forState: UIControlState.Normal)
//            clicked("o", chars: sender!.titleLabel!.text!.characters)
//            oTurn = true
//        }
//    
//        checkWinner()
    }
    
    func clicked(string: NSString, chars: String.CharacterView) {
        // Called when the user clicks, value of either "o" or "x" is stored into the array
        // Set the turns array pos to be occupied
        let chars:[Character] = Array(chars)
        let first = String(chars[0])
        let second = String(chars[1])
        turnsArray[Int(first)!][Int(second)!] = string as String
    }
    
    func checkWinner() -> Bool {

        return true
    }

}

