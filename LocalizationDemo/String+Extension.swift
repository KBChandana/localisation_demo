//
//  String+Extension.swift
//  LocalizationDemo
//
//  Created by Baby Chandana Kamalapuram on 09/04/26.
//
import Foundation

extension String {
    func localized() -> String {
        // Retrieve the selected language from UserDefaults
        let langKey = UserDefaults.standard.string(forKey: "selectedLanguage")
        
        // Try to find the corresponding .lproj folder for the selected language
        if let path = Bundle.main.path(forResource: langKey, ofType: "lproj") {
            // If found, create a bundle for that language
            let bundle = Bundle(path: path) ?? .main
            // Use NSLocalizedString with the specified bundle
            return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
        }
        
        // If the language is not found, use the system language (fallback)
        return NSLocalizedString(self, comment: "")
    }
}
