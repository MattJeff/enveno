//
//  ReplaceString.swift
//  Eveno
//
//  Created by Christophe on 14/10/2022.
//

import Foundation

struct ReplaceString {
    static let tool = ReplaceString()
    
    func replaceEmailByAsterix(email: String) -> String {
        let atSign = email.firstIndex(of: "@") ?? email.endIndex
        let EmailUser = email[..<atSign]
        let hiddenEmailUser = EmailUser.replacingOccurrences(of: "(?<!^)[^.]", with: "*", options: .regularExpression)
        return String(hiddenEmailUser + email.suffix(from: atSign))
    }
    
    func replaceNumberByAsterix(phone: String) -> String {
        let firstNumber = String(phone [phone.startIndex..<phone.index(phone.startIndex, offsetBy: 3)])
        let middleNumber = String(phone [phone.index(phone.startIndex, offsetBy: firstNumber.count)..<phone.index(phone.startIndex, offsetBy: 7)])
        let lastNumber = String(phone [phone.index(phone.startIndex, offsetBy: (middleNumber + firstNumber).count)..<phone.index(phone.startIndex, offsetBy: phone.count)])
        let asterixNumber = String(middleNumber.replacingOccurrences(of: "\\d", with: "*", options: .regularExpression))
        
        return firstNumber + asterixNumber + lastNumber
    }
}
