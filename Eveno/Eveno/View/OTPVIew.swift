//
//  OTPVIew.swift
//  Eveno
//
//  Created by Christophe on 16/10/2022.
//

import SwiftUI

struct OTPVIew: View {
    @State private var timeremaining = 60
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            Text("Resend code in \(timeremaining)")
        }.onReceive(timer) { time in
            if timeremaining > 0 {
                timeremaining -= 1
            } else {
                //
            }
        }
        
    }
}

struct OTPVIew_Previews: PreviewProvider {
    static var previews: some View {
        OTPVIew()
    }
}
