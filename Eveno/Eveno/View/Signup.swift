//
//  Signup.swift
//  Eveno
//
//  Created by Alexandre Repaire-Carlier on 05/10/2022.
//

import SwiftUI

struct Signup: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var toggleRemember = false
    var size = UIScreen.main.bounds

    var body: some View {
        VStack{
            Image(systemName: "arrow.left")
            .frame(maxWidth:.infinity,alignment: .leading)
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width/2, height: size.width/2)
            Text("Create New Account")
                .bold()
                .font(.title)
            CustomTextField(text: $email, placeholder: "Email", image: "envelope.fill")
                .padding(.top)
            
            CustomTextField(text: $password, placeholder: "Password", image: "lock.fill", secure: true)
            
            Toggle("Remember me", isOn: $toggleRemember)
                .padding()

            CustomButton(text: "Sign up")
            
            HStack{
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color(.systemGray3))
                Text("or continue with")
                    .frame(width: 140)
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color(.systemGray3))
            }.padding()
            
            HStack{
                Spacer()
                Image("facebook")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 30)
                
                Spacer()
                Image("google")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 30)
                Spacer()
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 30)
                Spacer()
            }
            HStack{
                Text("Already have an account? ")
                Text("Sign in")
                    .foregroundColor(Color("bleu"))
                    .bold()
                
            }.padding()
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        

    }
}



struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}

