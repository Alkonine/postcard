//
//  ViewController.swift
//  postcard
//
//  Created by Muhammad Umair Tariq on 6/29/15.
//  Copyright (c) 2015 abc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var placeDaNameHereTextField: UITextField!
    @IBOutlet weak var enterDaMessageHereTextField: UITextField!
   
    @IBOutlet var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterDaMessageHereTextField.text
        enterDaMessageHereTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        enterDaMessageHereTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent!!", forState: UIControlState.Normal)
       
    }
}

