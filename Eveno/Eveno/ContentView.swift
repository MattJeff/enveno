//
//  ContentView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 04/10/2022.
//

import SwiftUI

struct ContentView: View {
       
   @ObservedObject var viwModel = NotificationViewModel()
    
    var body: some View {
        VStack {
            HStack{
                Text("Notifiaction")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                
            }
            CustomToggle(text: "Localisation", isOn: $viwModel.localisation)
            CustomToggle(text: "Notifiaction", isOn: $viwModel.notification)
            CustomToggle(text: "Alarm", isOn: $viwModel.song)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
