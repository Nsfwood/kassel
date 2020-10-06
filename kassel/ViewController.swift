//
//  ViewController.swift
//  kassel
//
//  
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var aField: NSTextField!
    @IBOutlet weak var nField: NSTextField!
    @IBOutlet weak var sumField: NSTextField!
    @IBOutlet weak var calButton: NSButton!
    
    var sum = 0
    var a = 0
    var n = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func calPressed(_ sender: Any) {
        a = Int(aField.stringValue) ?? 0
        n = Int(nField.stringValue) ?? 0
        sum = 0
        
        for x in 1...n {
            sum = sum + (a * x)
            print(sum)
        }
        
        print(sum)
        sumField.stringValue = "\(sum)"
    }
    
}

