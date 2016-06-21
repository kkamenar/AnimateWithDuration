//
//  ViewController.swift
//  AnimateWithDuration
//
//  Created by Kristin Kamenar on 6/21/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set label info programatically
        myLabel.text = "Hello World!"
        //myLabel.alpha = 0
    }

    @IBAction func screenTapped(sender: UITapGestureRecognizer) {
        
        //print("tap")
        
        //set up 2 second animation
        
        //if visible text, make invisible
        if myLabel.alpha == 1.0
        {
        
            UIView.animateWithDuration(2.0)
            {
                self.myLabel.alpha = 0.0
            }
        }
        
        //if text is invisible, make visible
        else if myLabel.alpha == 0.0
        {
            UIView.animateWithDuration(2.0)
            {
                self.myLabel.alpha = 1.0
            }
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

