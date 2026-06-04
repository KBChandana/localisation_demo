//
//  LangaugesDemo.swift
//  LocalizationDemo
//
//  Created by Baby Chandana Kamalapuram on 09/04/26.
//

import SwiftUI

struct LangaugesDemo: View {
    @AppStorage("selectedLanguage") var selectedLanguage = "en"
   
    //@State private var selectLangauge: AppLanguage = .english
    
    let languages = AppLanguage.allCases
    
    var body: some View {
       
         
            NavigationStack{
                VStack{
                    List(languages, id:\.self){ lang in
                        HStack{
                            
                            Text(lang.title.uppercased())
                            Spacer()
                            
                            if lang.rawValue == selectedLanguage {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.black)
                                
                            }
                        }
                        .onTapGesture {
                            selectedLanguage = lang.rawValue
                            //UserDefaults.standard.set(lang.rawValue, forKey: "selectedLanguage")
                            
                            
                        }
                    
                    }
                    .navigationTitle("Languages")
                    }
            }
        
    }
}

#Preview {
    LangaugesDemo()
}

