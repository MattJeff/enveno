//
//  begin.swift
//  Eveno
//
//  Created by Mathis Higuinen on 04/10/2022.
//

import SwiftUI

struct begin: View {
    
    var size = UIScreen.main.bounds
    var body: some View {
        VStack{
        
                Image(systemName: "arrow.left")
                .frame(maxWidth:.infinity,alignment: .leading)
            
            Image("logo")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width:size.width/2,height:size.width/2)
                .padding(.top)
            
            Text("Let's you in")
                .bold()
                .font(.largeTitle)
            
            VStack(spacing:15){
                CustomButtonIcon(image: "facebook", text: "Continue With Facebook")
                
                CustomButtonIcon(image: "google", text: "Continue With Google")
                
                CustomButtonIcon(image: "apple", text: "Continue With Apple")
            }
            
            HStack{
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color(.systemGray3))
                Text("Or")
                    .foregroundColor(.gray)
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color(.systemGray3))
            }.padding()
            
            
            Button {
                
            } label: {
                CustomButton(text:"Sign in with password")
            }.padding(.vertical)
            
            Spacer()
            
            HStack{
                Text("Don't have an account? ")
                Text("Sign Up")
                    .foregroundColor(Color("bleu"))
                
            }.padding()
                .font(.caption)
                .foregroundColor(.gray)
            
           
          
                
           
        }
        .padding()
    }
}





struct CustomButtonIcon: View {
    @State var image:String = "google"
    @State var text:String = "Continue with Facebook"
    var body: some View {
        
        HStack(spacing:10){
            Spacer()
            Image("\(image)")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width:25,height:25)
            Text("\(text)")
            
            Spacer()
        }.padding()
        .background(
                RoundedRectangle(cornerRadius: 15)
                .stroke()
                .foregroundColor(.gray.opacity(0.3))
            
            
            )
        .padding(.horizontal,8)
        
    }
}


struct CustomButton:View{
    @State var text:String = "Sign in with password"
    var body:some View{

            Text("\(text)")
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth:.infinity)
            .background(Color("bleu"))
            .cornerRadius(25)
            .shadow(color:Color("bleu").opacity(0.5),radius: 5,x:0,y:4)
               
        
    }
}


struct begin_Previews: PreviewProvider {
    static var previews: some View {
        begin()
    }
}





