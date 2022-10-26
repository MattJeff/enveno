//
//  NotificationCenterView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//

import SwiftUI

struct NotificationCenterView: View {
    var body: some View {
        VStack{
            ScrollView(showsIndicators:false){
                VStack(spacing:40){
                    ForEach(NotificationCenter.allCases,id:\.self) { element in
                        NotificationCenterCell(text:element.rawValue)
                    }
                }
                
            }
            Spacer()
            
        }
          
    }
}

struct NotificationCenterView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCenterView()
    }
}
