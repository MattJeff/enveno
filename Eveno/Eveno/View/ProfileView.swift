//
//  ProfileView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            HStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:28,height: 28)
                Text("Profile")
                    
                    
            }
            
        }.padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
