//
//  ForgotPassword.swift
//  Eveno
//
//  Created by Christophe on 14/10/2022.
//

import SwiftUI

struct ForgotPassword: View {
    var body: some View {
        ScrollView {
            VStack{
                /*VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: 19, height: 10 ,alignment: .leading)
                            .padding(.trailing, 20)
                        Text("Forgot password")
                            .font(.custom("Urbanist-Bold", size: 24))
                        Spacer()
                    }
                    
                }*/
                Image("illustration-4b")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 270)
                Text("Select which contact details should we use to reset your password")
                    .font(.custom("Urbanist-Medium", size: 18))
                    .padding(.top, 40)
                CustomButtonForgotPassword(backgrounColor: Color("primary"), iconColor: Color("primary"), iconName: "Message", title: "Via Email", value: ReplaceString.tool.replaceEmailByAsterix(email: "toto@free.fr"))
                    .padding([.top, .bottom], 24)
                CustomButtonForgotPassword(backgrounColor: Color("primary"), iconColor: Color("primary"), iconName: "Chat", title: "Via SMS", value: ReplaceString.tool.replaceNumberByAsterix(phone: "0987654323"))
                
                Button(action: {}) {
                    CustomButtonPurple(isDisbled: false, title: "Continue", isRounded: false, isChekout: false)
                }
                .padding(.top, 40)
                .padding(.bottom, 36)
            }.padding()
        }.navigationTitle("Forgot Password")
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
