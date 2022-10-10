//
//  CustomTextField.swift
//  Eveno
//
//  Created by Alexandre Repaire-Carlier on 07/10/2022.
//

import SwiftUI

struct CustomTextField:View{
    @Binding var text: String
    var placeholder:String = "Email"
    var image:String = ""
    var secure:Bool = false

    var body:some View{

        HStack{
            Image(systemName: image)
                .foregroundColor(.gray)
            if(secure == true){
                SecureField("\(placeholder)", text: $text)
                    .foregroundColor(.black)
                Image(systemName: "eye.slash.fill")
                    .foregroundColor(.gray)
            } else {
                TextField("\(placeholder)", text: $text)
                    .foregroundColor(.black)
            }

                
        }
        .padding()
          }
}

struct CustomTextField_Previews: PreviewProvider {

    static var previews: some View {
        CustomTextField(text: .constant("test"))
    }
}

