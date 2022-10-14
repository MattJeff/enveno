//
//  IconRounded.swift
//  Eveno
//
//  Created by Christophe on 14/10/2022.
//

import SwiftUI

struct IconRounded: View {
    var backgrounColor: Color
    var iconColor: Color
    var iconName: String
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(backgrounColor.opacity(0.1))
            Image(iconName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(iconColor)
                .frame(width: 26, height: 26)
            
        }
    }
}

struct IconRounded_Previews: PreviewProvider {
    static var previews: some View {
        IconRounded(backgrounColor: Color("primary"), iconColor: Color("primary"), iconName: "Message")
    }
}
