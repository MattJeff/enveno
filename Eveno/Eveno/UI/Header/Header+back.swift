//
//  Header+back.swift
//  Eveno
//
//  Created by Mathis Higuinen on 26/10/2022.
//

import SwiftUI

struct Header_back: View {
    var title  = "Notification"
    @Environment(\.dismiss) var dismiss
    var body: some View {
        HStack(spacing:16){
            Image("Arrow - back")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:28,height: 28)
                .onTapGesture {
                    dismiss()
                }
               
            Text("\(title)")
                .modifier(TextSizeModifier(size: .h4, Ufont: .Bold))
            Spacer()
        }
    }
}

struct Header_back_Previews: PreviewProvider {
    static var previews: some View {
        Header_back()
    }
}
