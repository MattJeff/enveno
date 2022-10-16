//
//  Signin.swift
//  Eveno
//
//  Created by Alexandre Repaire-Carlier on 07/10/2022.
//

import SwiftUI

struct Signin: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var toggleRemember = false
    var size = UIScreen.main.bounds
    
    var body: some View {
        NavigationView {
            VStack{
                Image(systemName: "arrow.left")
                    .frame(maxWidth:.infinity,alignment: .leading)
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width/2, height: size.width/2)
                Text("Login to Your Account")
                    .bold()
                    .font(.title)
                CustomTextField(text: $email, placeholder: "Email", image: "envelope.fill")
                    .padding(.top)
                CustomTextField(text: $password, placeholder: "Password", image: "lock.fill", secure: true)
                
                Toggle("Remember me", isOn: $toggleRemember)
                    .padding()
                
                CustomButton(text: "Sign in")
                VStack {
                    NavigationLink {
                        ForgotPassword()
                    } label: {
                        Text("Forgot the password")
                            .foregroundColor(Color("primary"))
                            .font(.custom("Urbanist-SemiBold", size: 16))
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 39)
                }
                
                
                
                
                VStack {
                    HStack {
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
                }
                
                
                HStack{
                    Text("Don't have an account? ")
                    Text("Sign up")
                        .foregroundColor(Color("bleu"))
                        .bold()
                    
                }.padding()
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        
        
    }
    
}



struct Signin_Previews: PreviewProvider {
    static var previews: some View {
        Signin()
    }
}
