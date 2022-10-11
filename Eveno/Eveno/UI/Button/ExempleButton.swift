//
//  ExempleButton.swift
//  Eveno
//
//  Created by Mathis Higuinen on 11/10/2022.
//

import SwiftUI

struct ExempleButton: View {
    var size = UIScreen.main.bounds.width
    var body: some View {
        VStack{
            ScrollView{
                Group{
                    CustomButtonPurple(isDisbled: false, title: "Button", isRounded: false, isChekout: false)
                    CustomButtonPurple(isDisbled: false, title: "Button", isRounded: true, isChekout: false)
                    CustomButtonPurple(isDisbled: true, title: "Button", isRounded: false, isChekout: false)
                    CustomButtonPurple(isDisbled: true, title: "Button", isRounded: true, isChekout: false)
                    CustomButtonPurple(isDisbled: false, title: "Button", isRounded: false, isChekout: true)
                    CustomButtonPurple(isDisbled: false, title: "Button", isRounded: true, isChekout: true)
                    CustomButtonClear(isDisabled: false, title: "Button", isRounded: false, isChekout: false)
                    CustomButtonClear(isDisabled: false, title: "Button", isRounded: true, isChekout: false)
                    CustomButtonClear(isDisabled: false, title: "Button", isRounded: false, isChekout: true)
                    CustomButtonClear(isDisabled: false, title: "Button", isRounded: true, isChekout: true)
                }
                HStack{
                    CustomButtonClear(isDisabled: false, title: "Cancel", isRounded: true, isChekout: false)
                    Spacer()
                    CustomButtonPurple(isDisbled: false, title: "Continue", isRounded: true, isChekout: false)
                }
                
            }
               
            
        }.padding()
    }
}

struct ExempleButton_Previews: PreviewProvider {
    static var previews: some View {
        ExempleButton()
    }
}
