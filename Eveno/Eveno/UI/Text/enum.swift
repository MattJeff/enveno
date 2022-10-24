//
//  enum.swift
//  Eveno
//
//  Created by Mathis Higuinen on 24/10/2022.
//


import Foundation


enum Urbanistfont:String, CaseIterable,Identifiable{
    var id: Self { self }
    case Bold = "Bold"
    case Medium = "Medium"
    case Regular = "Regular"
    case Semibold = "Semibold"
    
   
}

enum TextSize:String,CaseIterable,Identifiable{
    var id: Self { self }
    case h1 = "48"
    case h2 = "40"
    case h3 = "32"
    case h4 = "24"
    case h5 = "20"
    case h6 = "18"
    case bodyXLarge = ".18"
    case bodyLarge = "16"
    case bodyMedium = "14"
    case bodysmall = "12"
    case bodyXsmall = "10"
  
}

