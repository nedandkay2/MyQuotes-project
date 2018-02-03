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
    
    let defaults = UserDefaults.standard
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
        
        let themeValue = defaults.integer(forKey: "theme")
        if themeValue == 0
        {
            view.backgroundColor = UIColor.black
            changeTheme(color: UIColor.white)
        }
        else
        {
            view.backgroundColor = UIColor.white
            changeTheme(color: UIColor.black)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func segmentedChanged(_ sender: Any) {
        
        let index = segmentedTheme.selectedSegmentIndex
        defaults.set(index, forKey: "theme" )
        
        if index == 0   // default background color
            
        {
            theme = UIColor.black
            changeTheme(color: UIColor.white)
        }
        else
        {
            theme = UIColor.white
            changeTheme(color: UIColor.black)
        }
        
        view.backgroundColor = theme // change background color once user selects
    }
    
    @IBAction func switchChanged(_ sender: Any) {
        
        if switchBoarder.isOn
        {
            imageBoarder = true
        }
        else
        {
            imageBoarder = false
        }
    }
    
    @IBAction func stepperChanged(_ sender: Any) {
    }
    
    func changeTheme(color: UIColor)
    {
        
        for label in settingsLabels
        {
            label.textColor = color
        }
        segmentedTheme.tintColor = color
        switchBoarder.onTintColor = color
        stepperFavorite.tintColor = color
        
    }

}
