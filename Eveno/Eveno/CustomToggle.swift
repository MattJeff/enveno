//
//  CuttomToggle.swift
//  Eveno
//
//  Created by Mathis Higuinen on 10/10/2022.
//

import SwiftUI

struct CustomToggle: View {
    var text:String
    @Binding var isOn:Bool
    var body: some View {
       Toggle(text, isOn: $isOn)
            .tint(Color("primary"))
    }
}

struct CuttomToggle_Previews: PreviewProvider {
    static var previews: some View {
        CustomToggle( text:"default",isOn: .constant(true))
    }
}
