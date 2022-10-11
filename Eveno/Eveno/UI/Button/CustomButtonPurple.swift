//
//  CustomButtonStyle.swift
//  Eveno
//
//  Created by Mathis Higuinen on 11/10/2022.
//

import SwiftUI

struct CustomButtonPurple: View {
    
    @State var isDisbled:Bool = true
    @State var title:String = "Button"
    @State var isRounded:Bool = true
    @State var isChekout:Bool = true
    
    var body: some View {
        HStack(spacing:16){
            Spacer()
            if isChekout{
                Image("Buy")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.white)
                    .frame(width:20,height: 20)
            }
            Text("\(title)")
                .font(.custom("Urbanist-Bold", size: 18))
                .foregroundColor(isDisbled ? .white : .white)
            if isChekout{
                Image("Arrow - Right")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.white)
                    .frame(width:20,height: 20)
            }
            Spacer()
        }.padding(.vertical)
            .background(isDisbled ? Color("disbledButton") :  Color("primary"))
            .cornerRadius(isRounded ? 100 : 16)
           
    }
}


