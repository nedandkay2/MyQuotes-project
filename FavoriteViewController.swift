//
//  FavoriteViewController.swift
//  MyQuotes
//
//  Created by Paul James Hearn on 2018-01-29.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    
    @IBOutlet weak var favoriteImgView: UIImageView!
    
    override func  viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = theme
        
        let savingDefaults = UserDefaults.standard
        let indexSaved = savingDefaults.integer(forKey: "favorite")
        
        let imageName = "quote\(indexSaved)"
        
        let image = UIImage(named: imageName)
        
        favoriteImgView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}




