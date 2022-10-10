//
//  CustomTextField.swift
//  Eveno
//
//  Created by Mathis Higuinen on 10/10/2022.
//


//
//  CustomTextField.swift
//  Eveno
//
//  Created by Alexandre Repaire-Carlier on 07/10/2022.
//



enum TextFieldType{
    case secure
    case standar
}

import SwiftUI

struct CustomTextField:View{
    @Binding var text: String
    var placeholder:String = "Email"
    var image:String = "Message"
    var secure:Bool = false
   
    var body:some View{

        HStack{
            
            
            Image("\( image)")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:20,height: 20)
                .foregroundColor(Color("500"))
            
            if secure{
                SecureField("\(placeholder)", text: $text)
                    .foregroundColor(.black)
                Image(systemName: "eye.slash.fill")
                    .foregroundColor(.gray)
            } else {
                TextField("\(placeholder)", text: $text)
                    .foregroundColor(.black)
            }

                
        }.padding()
        .background(Color("50"))
        .cornerRadius(16)
    
          }
}








struct CustomTextField_Previews: PreviewProvider {

    static var previews: some View {
        CustomTextField(text: .constant("test"))
            .previewLayout(.sizeThatFits)
    }
}

