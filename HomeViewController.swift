//
//  HomeViewController.swift
//  MyQuotes
//
//  Created by Paul James Hearn on 2018-01-20.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

/// global variable declared for all VCs
var theme: UIColor = UIColor.black

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var quoteImgView: UIImageView!
    
    var quoteArray = ["quote0", "quote1", "quote2", "quote3","quote4","quote5","quote6","quote7","quote8", "quote9"]
    var arrayIndex = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func nextClicked(_ sender: UIButton) {
        
        if arrayIndex < quoteArray.count-1
            
        {
            arrayIndex += 1
            let imageName = quoteArray[arrayIndex]
            let image = UIImage(named: imageName)
            quoteImgView.image = image
        } else {
            sender.isEnabled = false  /// disable nextClicked button
        }
    }
    
    
    @IBAction func backClicked(_ sender: UIButton) {
        
        if arrayIndex > 0
        {
            sender.isEnabled = true
            arrayIndex -= 1
            let imageName = quoteArray[arrayIndex]
            let image = UIImage(named: imageName)
            quoteImgView.image = image
        } else {
            sender.isEnabled = false  /// disable backClicked button
            }
        
        }
    
    @IBAction func favoriteClicked(_ sender: Any) {
        
        let savingDefaults = UserDefaults.standard
        savingDefaults.set(arrayIndex, forKey: "favorite")
        
    }


}





