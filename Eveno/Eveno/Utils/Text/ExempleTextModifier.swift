//
//  ProfileView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 11/10/2022.
//

import SwiftUI

struct ExempleTextModifier: View {
    var body: some View {
        NavigationView {
            VStack(alignment:.leading){
                ScrollView(showsIndicators:false){
                    VStack(alignment:.leading){
                        ForEach(TextSize.allCases){ size in
                            ForEach(Urbanistfont.allCases){font in
                                
                                Text(font.rawValue + " - " + "\(size.rawValue)pt")
                                    .modifier(TextSizeModifier(size: size, Ufont: font))
                            }
                            Divider()
                        }
                    }
                }
            }.padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ExempleTextModifier()
    }
}



