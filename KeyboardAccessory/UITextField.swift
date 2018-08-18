//
//  UITextField.swift
//  KeyboardAccessory
//
//  Created by Andrew Seeley on 8/8/18.
//  Copyright © 2018 Seemu. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func addDoneButtonToKeyboard(myAction: Selector?, target: Any?) {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        doneToolbar.barStyle = UIBarStyle.blackTranslucent
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        var done = UIBarButtonItem()
        if target == nil {
            done = UIBarButtonItem(title: "Done", style: .done, target: self, action: myAction)
        } else {
            done = UIBarButtonItem(title: "Done", style: .done, target: target!, action: myAction)
        }
        
        var items = [UIBarButtonItem]()
        items.append(flexSpace)
        items.append(done)
        
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    // Say hi function in here!!!!
    
}
