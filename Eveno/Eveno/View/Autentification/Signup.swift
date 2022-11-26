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
    @State var selected = "facebook"
    
    var logo = ["facebook","apple","google"]
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
            CustomTextField(text: $email, placeholder: "Email", image: "Message", secure: false)
                .padding(.top)
            
            CustomTextField(text: $password, placeholder: "Password", image: "Lock", secure: true)
            
            HStack(spacing:16){
                Button {
                    toggleRemember.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth:5)
                            .frame(width:24,height: 24)
                            .foregroundColor(Color("primary"))
                        if toggleRemember{
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width:24,height: 24)
                                .foregroundColor(Color("primary"))
                            Image(systemName: "checkmark")
                                .bold()
                                .foregroundColor(.white)
                               
                        }
                    }
                        
                }
                
                Text("Rememeber me")
                    .bold()

                
            }.padding(.vertical)

            CustomButton(text: "Sign up").padding(.vertical)
            
            HStack(spacing:16){
                Rectangle()
                    .frame(width: 96,height: 1)
                    .foregroundColor(Color(.systemGray3))
                
                Text("or continue with")
                    .foregroundColor(Color("700"))
                    .bold()
                    .font(.system(size: 18))
                    
                Rectangle()
                    .frame(width: 96,height: 1)
                    .foregroundColor(Color(.systemGray3))
            }.padding(.vertical)
            
            HStack{
                Spacer()
                
                
                ForEach(logo,id:\.self) { valeur in
                    Spacer()
                 
                        Image("\(valeur)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20, height: 30)
                            .padding()
                            .padding(.horizontal)
                            .background(
                             RoundedRectangle(cornerRadius: 16)
                                .stroke(Color("200"),lineWidth: 2)
                            )
                           
                
                    Spacer()
                }
          
                
             
            }.padding()
            HStack{
                Text("Already have an account? ")
                Text("Sign in")
                    .foregroundColor(Color("bleu"))
                    .bold()
                
            }.padding()
                .font(.system(size: 14))
                .foregroundColor(.gray)
        }
        .padding()
        

    }
}

struct buttonClicker: ViewModifier {
    var clicker:Bool
    func body(content: Content) -> some View {
     
            content
            .padding()
        
       
    }
}


struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}

