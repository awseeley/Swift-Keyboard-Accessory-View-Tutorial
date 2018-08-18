//
//  ViewController.swift
//  KeyboardAccessory
//
//  Created by Andrew Seeley on 8/8/18.
//  Copyright © 2018 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var pinNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pinNumber.delegate = self
        pinNumber.addDoneButtonToKeyboard(myAction: #selector(self.pinNumber.resignFirstResponder), target: nil)
        //pinNumber.addDoneButtonToKeyboard(myAction: #selector(sayHi), target: self)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func sayHi() {
        print("say hi")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

