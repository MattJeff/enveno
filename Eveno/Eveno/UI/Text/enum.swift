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
    case h6 = "17"
    case bodyXLarge = ".18"
    case bodyLarge = "16"
    case bodyMedium = "14"
    case bodysmall = "12"
    case bodyXsmall = "10"
  
}



enum Menue:String,CaseIterable,Identifiable{
    var id: Self { self }
    case ManageEvents = "Manage Events"
    case MessageCenter = "Message Center"
    case Profile = "Profile"
    case Notification = "Notification"
    case Payments = "Payments"
    case LinkedAccounts = "Linked Accounts"
    case TicketIssues = "Ticket Issues"
    case Security = "Security"
    case Language = "Language"
    case DarkMode = "Dark Mode"
    case HelpCenter = "Help Center"
    case InviteFriends = "Invite Friends"
    case Rateus = "Rate us"
    case Logout = "Logout"
}


enum NotificationCenter:String,CaseIterable,Identifiable{
    var id: Self { self }
    case EnableSoundVibrate = "Enable Sound & Vibrate"
    case PurchasedTickets = "Purchased Tickets"
    case LikedEvents = "Liked Events"
    case FollowedOrganizer = "Followed Organizer"
    case SpecialOffers = "Special Offers"
    case Payments = "Payments"
    case Reminders = "Reminders"
    case Recommendations = "Recommendations"
    case AppUpdates = "App Updates"
    case NewServiceAvailable = "New Service Available"
    case NewTipsAvailable = "New Tips Available"
}
