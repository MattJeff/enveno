//
//  NotificationCenterCell.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//

import SwiftUI

struct NotificationCenterCell: View {
    @State var isOne = false
    @State var text:String = "Linked Events"
    var body: some View {
        Toggle(isOn: $isOne) {
            Text("\(text)")
                .myFont(size: .bodyXLarge, font: .Semibold)
        }.tint(Color("primary"))
            .padding(.horizontal)
    }
}

struct NotificationCenterCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCenterCell()
    }
}
