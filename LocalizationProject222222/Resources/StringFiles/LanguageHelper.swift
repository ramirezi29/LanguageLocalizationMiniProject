//
//  LanguageHelper.swift
//  LocalizationProject222222
//
//  Created by Ivan Ramirez on 11/28/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class LanguageHelper {
    
    static let APPLE_LANGUAGE_KEY = "AppleLanguages"
//    
//    static func currentAppleLanguage() -> String{
//        let userdef = UserDefaults.standard
//        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
//        let current = langArray.firstObject as! String
//        let endIndex = current.startIndex
//        let currentWithoutLocale = current.substring(to: current.index(endIndex, offsetBy: 2))
//        
//        return currentWithoutLocale
//    }
//    
//    static let bundle: Bundle = {
//        
//        
//        
//    }()
    
    static private var currentLanguage: String {
        guard let currentLanguage = Locale.current.languageCode else { return "" }
        return currentLanguage
    }
    
    static var bundle: Bundle = {
        let path = Bundle.main.path(forResource: LanguageHelper.currentLanguage, ofType: "lproj")
        
        let bundle = Bundle.init(path: path!)! as Bundle
        
        return bundle
        
    }()
    
}
