//
//  ViewController.swift
//  LocalizationProject222222
//
//  Created by Ivan Ramirez on 11/28/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomTitle2: UILabel!
    // Outlets
    @IBOutlet weak var exampleTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
     exampleTitle.text = NSLocalizedString("title_text", comment: "This is just a reminder to take out the trash")
        
    }
    
    
    @IBAction func englishButtonTapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "en", ofType: "lproj")
        
        let bundle = Bundle.init(path: path!)! as Bundle
        
        //THis might crash the app
        randomTitle2.text = bundle.localizedString(forKey: "random_text", value: nil, table: nil)
        
        exampleTitle.text = LanguageHelper.bundle.localizedString(forKey: "title_text", value: nil, table: nil)
    }

    
    @IBAction func spanishButtonTapped(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "es", ofType: "lproj")
        
        let bundle = Bundle.init(path: path!)! as Bundle
        
        exampleTitle.text = LanguageHelper.bundle.localizedString(forKey: "title_text", value: nil, table: nil)
        
    }
    
    /*
 es.lproj
     
     en.lproj
     
 */
}

