//
//  CustomButtonForgotPassword.swift
//  Eveno
//
//  Created by Christophe on 14/10/2022.
//

import SwiftUI

struct CustomButtonForgotPassword: View {
    @State private var isSelected = false
    var backgrounColor: Color
    var iconColor: Color
    var iconName: String
    var title: String
    
    // En attentes des vrai data
    var value: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                IconRounded(backgrounColor:backgrounColor, iconColor: iconColor, iconName: iconName)
                    .padding(.leading, 25)
                VStack(alignment: .leading ,spacing: 8) {
                    Text(title)
                        .font(.custom("Urbanist", size: 14))
                        .foregroundColor(Color("500"))
                    
                    Text(value)
                        .font(.custom("Urbanist-Bold", size: 16))
                        .accentColor(Color("900"))
                }
            }
        }
        .frame(height: 70)
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            RoundedRectangle(cornerRadius: 40)
                .stroke(isSelected ? Color("primary") : Color("200"), lineWidth: isSelected ? 4 : 1)
        )
        .onTapGesture {
            isSelected.toggle()
        }
    }
    
   
}

struct CustomButtonForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonForgotPassword(backgrounColor: Color("primary"), iconColor: Color("primary"), iconName: "Message", title: "Via email")
            .previewLayout(.sizeThatFits)
    }
}
