//
//  MenuView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
     
            VStack(spacing:24){
                ForEach(Menue.allCases) { element in
                    
                    if element.rawValue == "Language"{
                        NavigationLink {
                            Text("Langue")
                        } label: {
                            MenuCellLanguage(image: element.rawValue, title: element.rawValue, langue: "English (US)")
                        }

                       
                    }else if element.rawValue == "Dark Mode"{
                        
         
                        MenuCellDarkMode(image:element.rawValue,title: element.rawValue)
                        
                    }else{
                        NavigationLink {
                            RootMenuView(title:element.rawValue).navigationBarHidden(true)
                        } label: {
                            MenuCell(image:element.rawValue,title:element.rawValue)
                        }
                    }
                }
            }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}


