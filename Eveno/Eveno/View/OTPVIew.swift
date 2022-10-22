//
//  OTPVIew.swift
//  Eveno
//
//  Created by Christophe on 16/10/2022.
//

import SwiftUI

struct OTPVIew: View {
    @State private var timeremaining = 60
    @StateObject var optVm: OPTViewModel = .init()
    @FocusState var activedField: OPTField?
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            Text("Code has been send to\(ReplaceString.tool.replaceNumberByAsterix(phone: "0987654323"))")
                .font(.custom("Urbanist-Medium", size: 18))
                .padding(.bottom, 60)
            VStack{
                OPTField()
            }
            
            HStack{
                Text("Resend code in")
                Text("\(timeremaining)")
                    .foregroundColor(Color("primary"))
            }
            .font(.custom("Urbanist", size: 18))
            .fontWeight(.regular)
            
                .padding(.top, 60)
                .padding(.bottom, 99)
            Button {
                //
            } label: {
                CustomButtonPurple(isDisbled: checkState(), title: "Continue", isRounded: false, isChekout: false)
            }.disabled(checkState())

        }.padding(24)
        .onChange(of: optVm.optTextField) { newValue in
            optCondition(value: newValue)
        }
        .onReceive(timer) { time in
            if timeremaining > 0 {
                timeremaining -= 1
            } else {
                //
            }
        }
        
    }
    
    func checkState() -> Bool {
        for index in 0..<4 {
            if optVm.optTextField[index].isEmpty { return true}
        }
        return false
    }
    // MARK : Condition for custom OPTField & limit only one text
    func optCondition(value: [String]){
        
        for index in 0..<3 {
            if value[index].count == 1 && activeStateForIndex(index: index) == activedField {
                activedField = activeStateForIndex(index: index + 1)
            }
        }
        
        for index in 0..<4{
            if value[index].count > 1 {
                optVm.optTextField[index] = String(value[index].last!)
            }
        }
        
        for index in 1...3 {
            if value[index].isEmpty && !value[index - 1].isEmpty {
                activedField = activeStateForIndex(index: index - 1)
            }
        }
    }
    
    
    
    @ViewBuilder
    func OPTField()->some View{
        HStack(spacing: 14) {
            ForEach(0..<4, id: \.self) { index in
                VStack(spacing: 8){
                    ZStack{
                            
                        TextField("", text: $optVm.optTextField[index])
                            .font(.custom("Urbanist-Bold", size: 24))
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .multilineTextAlignment(.center)
                            .focused($activedField, equals: activeStateForIndex(index: index))
                            .accentColor(activedField == activeStateForIndex(index: index)  ? Color("primary").opacity(0.5): Color("200"))
                            .frame(width:83, height: 61)
                            .background(RoundedRectangle(cornerRadius: 16).stroke(activedField == activeStateForIndex(index: index)  ? Color("primary").opacity(0.5): Color("200"), lineWidth: 1))
                            .background(activedField == activeStateForIndex(index: index)  ? Color("primary").opacity(0.1): Color("200"))
                            .cornerRadius(16)
                            .foregroundColor(Color("900"))
                          
                            
                    }
                }
            }
        }
    }
    
    func activeStateForIndex(index: Int) -> OPTField {
        print(index)
        switch index {
            case 0: return .field1
            case 1: return .field2
            case 2: return .field3
            case 3: return .field4
            default: return .field4
        }
    }
}

struct OTPVIew_Previews: PreviewProvider {
    static var previews: some View {
        OTPVIew()
    }
}


