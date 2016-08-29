//
//  ViewController.swift
//  FoodTracker
//
//  Created by pavel on 8/28/16.
//  Copyright © 2016 pavel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    // MARK: Actions
    
    @IBAction func setDefaultText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

