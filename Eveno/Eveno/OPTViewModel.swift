//
//  OPTViewModel.swift
//  Eveno
//
//  Created by Christophe on 17/10/2022.
//

import Foundation

class OPTViewModel: ObservableObject{
    @Published var optText: String = ""
    @Published var optTextField: [String] = Array(repeating: "", count: 4)
}
