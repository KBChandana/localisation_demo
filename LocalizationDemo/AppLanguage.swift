//
//  Untitled.swift
//  LocalizationDemo
//
//  Created by Baby Chandana Kamalapuram on 09/04/26.
//


enum AppLanguage: String, CaseIterable, Identifiable {
    case english = "en"
    case french = "fr"
    case hindi = "hi"
    case telugu = "te"
    case kannada = "kn"
    case tamil = "ta"
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .english: 
            return "English"
        case .french: 
            return "French"
        case .hindi: 
            return "Hindi"
        case .telugu: 
            return "Telugu"
        case .kannada: 
            return "Kannada"
        case .tamil: 
            return "Tamil"
        }
    }
}
