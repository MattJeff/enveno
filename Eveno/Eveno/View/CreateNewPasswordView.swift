//
//  CreateNewPasswordView.swift
//  Eveno
//
//  Created by Christophe on 24/11/2022.
//

import SwiftUI

struct CreateNewPasswordView: View {
    @State private var password = ""
    @State private var confirmationPassword = ""
    @State private var secureView = true
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Image("illustration-5b")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 276, height: 250)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Create your password")
                    .font(.custom("Urbanist-Medium", size: 18))
                    .padding(.top, 40)
               
                CustomTextField(text: $password, placeholder: "Password", image: secureView ? "Unlock" : "Lock", secure: true)
                CustomTextField(text: $confirmationPassword, placeholder: "Password", image: "Lock", secure: true)
                
                Button(action: {}) {
                    CustomButtonPurple(isDisbled: false, title: "Continue", isRounded: false, isChekout: false)
                }
                .padding(.top, 40)
                .padding(.bottom, 36)
            }.padding()
        }
    }
    
    func viewPasswordText() {
        secureView.toggle()
    }
}

struct CreateNewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewPasswordView()
    }
}
