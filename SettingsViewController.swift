//
//  SettingsViewController.swift
//  MyQuotes
//
//  Created by Paul James Hearn on 2018-01-29.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
// ...............

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var settingsLabels: [UILabel]!
    
    @IBOutlet weak var segmentedTheme: UISegmentedControl!
    
    @IBOutlet weak var switchBoarder: UISwitch!
    
    @IBOutlet weak var stepperFavorite: UIStepper!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func segmentedChanged(_ sender: Any) {
        
        let index = segmentedTheme.selectedSegmentIndex
        
        if index == 0
        {
            theme = UIColor.black
            for label in settingsLabels
            
        }
        else
        {
            theme = UIColor.gray
        }
        view.backgroundColor = theme // change background color once user selects
    }
    
    @IBAction func switchChanged(_ sender: Any) {
    }
    
    @IBAction func stepperChanged(_ sender: Any) {
    }
    

}
