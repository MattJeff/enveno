//
//  CustomButtonClear.swift
//  Eveno
//
//  Created by Mathis Higuinen on 11/10/2022.
//

import SwiftUI

struct CustomButtonClear: View {
    @State var isDisabled:Bool = true
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
                    .foregroundColor( isDisabled ? .white : Color("primary"))
                    .frame(width:20,height: 20)
            }
            Text("\(title)")
                .font(.custom("Urbanist-Bold", size: 18))
                .foregroundColor(isDisabled  ?   Color(.white) : Color("primary"))
            if isChekout{
                Image("Arrow - Right")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(isDisabled ? .white : Color("primary"))
                    .frame(width:20,height: 20)
            }
            Spacer()
        }.padding(.vertical)
            .background(isDisabled ? Color("disbledButton"): Color("primary").opacity(0.1))
            .cornerRadius(isRounded ? 100 : 16)
           
    }
}

struct CustomButtonClear_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonClear()
    }
}
