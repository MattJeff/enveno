//
//  ProfileView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators:false){
                VStack{
                    HStack{
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:50,height:50)
                        
                        Text("Profile")
                            .modifier(TextSizeModifier(size: .h4, Ufont: .Bold))
                            .foregroundColor(Color("900"))
                        Spacer()
                        Image("Auto Layout Horizontal")
                            .renderingMode(.template)
                        
                        
                    }
                    Image("Image-8")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:140,height:140)
                        .clipShape(Circle())
                    Text("Andrew Ainsley")
                        .modifier(TextSizeModifier(size: .h3, Ufont: .Bold))
                    Divider()
                    HStack{
                        VStack(spacing:12){
                            Text("12")
                                .modifier(TextSizeModifier(size: .h3, Ufont: .Bold))
                            Text("Event")
                                .modifier(TextSizeModifier(size: .bodyLarge, Ufont: .Medium))
                                .foregroundColor(Color("700"))
                            
                        }.padding()
                        Divider().frame(height:72)
                        VStack(spacing:12){
                            Text("7,389")
                                .modifier(TextSizeModifier(size: .h3, Ufont: .Bold))
                            Text("Followers")
                                .foregroundColor(Color("700"))
                            
                        }.padding()
                        Divider().frame(height:72)
                        VStack(spacing:12){
                            Text("125")
                                .modifier(TextSizeModifier(size: .h3, Ufont: .Bold))
                            Text("Following")
                                .foregroundColor(Color("700"))
                            
                        }.padding()
                    }
                    Divider()
                    MenuView()
    
                    Spacer()
                    
                }.padding()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
