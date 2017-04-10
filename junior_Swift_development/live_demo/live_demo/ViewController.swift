//
//  ViewController.swift
//  live_demo
//
//  Created by Lawrencé on 8/4/17.
//  Copyright © 2017 Lawrencé. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isUserEditing : Bool = false
    
    @IBAction func tappedDigit( sender: UIButton) {
        
        
        
        print("Digit button is tapped")
        let title = sender.currentTitle!
        print("digit \(title) is tapped!!")
        
        if isUserEditing {
            Displaylabel.text = Displaylabel.text! + title
        }
        else{
            Displaylabel.text = title
            isUserEditing = true
        }
    }

    @IBOutlet weak var Displaylabel: UILabel!
    
    var displayValue : Double {
        get{
            return Double(Displaylabel.text!)!
        }
        set{
            Displaylabel.text = String(newValue)
        }
    }
    
    @IBAction func performAction(sender: UIButton) {
        
        isUserEditing = false
        
        switch sender.currentTitle! {
            case "π":
                //Displaylabel.text = String(Double.pi)
                displayValue = 3.1415
            case "√":
                //let displayValue = Double(Displaylabel.text!)
                //Displaylabel.text = String(sqrt(displayValue))
                displayValue = sqrt(displayValue)
            default:
                break
        }
    }
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */

}

