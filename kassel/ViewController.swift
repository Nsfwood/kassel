//
//  ViewController.swift
//  kassel
//
//  
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var aField: NSTextField!
    @IBOutlet weak var bField: NSTextField!
    @IBOutlet weak var cField: NSTextField!
    @IBOutlet weak var dField: NSTextField!
    @IBOutlet weak var nField: NSTextField!
    @IBOutlet weak var sumField: NSTextField!
    @IBOutlet weak var calButton: NSButton!
    
    var sum = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var n = 0

    @IBAction func calPressed(_ sender: Any) {
        n = Int(nField.stringValue) ?? 0
        a = 0
        b = 0
        c = 0
        d = 0
        sum = 0
        
        for x in 1...n {
            a = a + (2 * x)
            b = b + (3 * x)
            c = c + (4 * x)
            d = d + (5 * x)
        }
        
        b = a + b
        c = a + b + c
        d = a + b + c + d
        sum = a + b + c + d
        
        aField.stringValue = "\(a)"
        bField.stringValue = "\(b)"
        cField.stringValue = "\(c)"
        dField.stringValue = "\(d)"
        sumField.stringValue = "\(sum)"
        
        print(sum)
        sumField.stringValue = "\(sum)"
    }
    
}

