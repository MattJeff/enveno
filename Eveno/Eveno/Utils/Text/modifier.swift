//
//  modifier.swift
//  Eveno
//
//  Created by Mathis Higuinen on 11/10/2022.
//

import Foundation
import SwiftUI

struct TextSizeModifier: ViewModifier {
    var size:TextSize
    var Ufont:Urbanistfont
    
    var mySize:CGFloat{
        switch size {
            case .h1:
                return CGFloat(48)
            case .h2:
                return CGFloat(40)
            case .h3:
               return CGFloat(32)
            case .h4:
                return CGFloat(24)
            case .h5:
                return CGFloat(20)
            case .h6:
                return CGFloat(18)
            case .bodyXLarge:
                return CGFloat(18)
            case .bodyLarge:
                return CGFloat(16)
            case .bodyMedium:
                return CGFloat(14)
            case .bodysmall:
                return CGFloat(12)
            case .bodyXsmall:
                return CGFloat(10)
        }
    }
    var myfont:String {
        switch Ufont {
            case .Bold:
                   return "Urbanist-Bold"
            case .Medium:
                return "Urbanist-Medium"
            case .Regular:
                return "Urbanist-Regular"
            case .Semibold:
                return "Uarbanist-Semibold"
        }
    }
   
    func body(content: Content) -> some View {
        
        content
            .font(.custom(myfont, size: mySize))
            
    }
}
