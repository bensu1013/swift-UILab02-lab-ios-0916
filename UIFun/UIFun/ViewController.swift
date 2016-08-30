//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var segControl1: UISegmentedControl!
    @IBOutlet weak var segControl2: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        switch true {
        case first == second:
            return first
        case first == "red":
            if second == "blue" {
                return "purple"
            } else{
                return "orange"
            }
        case first == "blue":
            if second == "red" {
                return "purple"
            } else {
                return "green"
            }
        case first == "yellow":
            if second == "red" {
                return "orange"
            } else {
                return "green"
            }
        default:
            return "red"
        }
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        
        paintBucket.paintColorName = mixColors(withFirst: segControl1.color.name.lowercaseString, second: segControl2.color.name.lowercaseString)
    }
}
