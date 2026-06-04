//
//  ItemList.swift
//  LocalizationDemo
//
//  Created by Baby Chandana Kamalapuram on 09/04/26.
//

import SwiftUI

struct ItemListView: View {
    let Items = [StringConstants.appleText,
                 StringConstants.bananaText,
                 StringConstants.grapesText,
                 StringConstants.waterMelonText,
                 StringConstants.sapotaText,
                 StringConstants.paragraphText
    ]
    @AppStorage("selectedLanguage") var selectedLanguage = "en"
    
    var body: some View {
        
        
        NavigationStack{
            VStack{
                List(Items, id:\.self){ item in
                    Text(item.localized())
                }
                .navigationTitle("ItemList")
               
                .toolbar {
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination:LangaugesDemo()){
                            HStack{
                                
                                Image(systemName: "gearshape.fill")
                                    .imageScale(.large)
                                    .tint(.black)
                            }
                            
                        }
                    }
                }
            }
            .id(selectedLanguage)
        }
    }
}
#Preview {
    ItemListView()
}
