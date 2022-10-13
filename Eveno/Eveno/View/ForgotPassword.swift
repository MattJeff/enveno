//
//  ForgotPassword.swift
//  Eveno
//
//  Created by Christophe on 14/10/2022.
//

import SwiftUI

struct ForgotPassword: View {
    var body: some View {
        VStack{
            Image("illustration-4b")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Select which contact details should we use to reset your password")
            Button(action: {}) {
                CustomButtonPurple(isDisbled: false, title: "Continue", isRounded: false, isChekout: false)
            }
        }.padding()
        
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
