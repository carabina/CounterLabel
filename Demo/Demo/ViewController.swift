//
//  ViewController.swift
//  Demo
//
//  Created by nappannda on 2018/04/21.
//  Copyright © 2018年 nappannda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var counterView: CounterLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterView.textView = textView
        counterView.counterMode = .standard
        counterView.counterMaxLength = 15
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

