//
//  MenuCell.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//

import SwiftUI

struct MenuCell: View {
    
    var image:String = "3 User 1"
    var title:String = "Invite Friends"

    var body: some View {
        HStack(spacing:20){
            Image(image)
                .resizable()
                .renderingMode(.template)
                .frame(width:28,height:28)
                .foregroundColor(title == "Logout" ? .red : Color("900"))
            Text("\(title)")
                .modifier(TextSizeModifier(size: .bodyXLarge, Ufont: .Bold))
                .foregroundColor(title == "Logout" ? .red : Color("900"))
                
            Spacer()
            
            Image("Arrow - Up 2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:20,height: 20)
                .rotationEffect(Angle(degrees: 90))
            
        }.foregroundColor(Color("900"))
    }
}

struct MenuCellDarkMode:View{
    
    @State var isOne = false
    var image:String = "3 User 1"
    var title:String = "Invite Friends"

    var body: some View {
        HStack(spacing:20){
            Image(image)
                .resizable()
                .renderingMode(.template)
                .frame(width:28,height:28)
                .foregroundColor(title == "Logout" ? .red : Color("900"))
            Text("\(title)")
                .modifier(TextSizeModifier(size: .bodyXLarge, Ufont: .Bold))
                .foregroundColor(title == "Logout" ? .red : Color("900"))
                
            Spacer()
            
            Toggle(isOn: $isOne) {
                
            }.tint(Color("primary"))
            
        }.foregroundColor(Color("900"))
    }
}

struct MenuCellLanguage:View{
    
    @State var isOne = false
    var image:String = "3 User 1"
    var title:String = "Invite Friends"
    var langue:String
    var body: some View {
        HStack(spacing:20){
            Image(image)
                .resizable()
                .renderingMode(.template)
                .frame(width:28,height:28)
                .foregroundColor(title == "Logout" ? .red : Color("900"))
            Text("\(title)")
                .modifier(TextSizeModifier(size: .bodyXLarge, Ufont: .Bold))
                .foregroundColor(title == "Logout" ? .red : Color("900"))
                
            Spacer()
            Text("\(langue)")
                .modifier(TextSizeModifier(size: .bodyXLarge, Ufont: .Regular))
                .foregroundColor(title == "Logout" ? .red : Color("900"))
            Image("Arrow - Up 2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:20,height: 20)
                .rotationEffect(Angle(degrees: 90))
            
        }.foregroundColor(Color("900"))
    }
}


struct MenuCellDarkMode_Previews: PreviewProvider {
    static var previews: some View {
        MenuCellDarkMode()
    }
}
