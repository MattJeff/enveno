//
//  RootMenuView.swift
//  Eveno
//
//  Created by Mathis Higuinen on 25/10/2022.
//

import SwiftUI

struct RootMenuView: View {
    var navigationRoot:Menue = .Notification
    @Environment(\.dismiss) var dismiss
    var title:String
    var body: some View {
        VStack{
           
            Header_back(title:title)
            switch navigationRoot {
                case .ManageEvents:
                  Text("Calendar")
                case .MessageCenter:
                    Text("Messanger")
                case .Profile:
                   Text("Edit Profile")
                case .Notification:
                    NotificationCenterView()
                case .Payments:
                    Text("Payment")
                case .LinkedAccounts:
                   Text("LinkAccounts")
                case .TicketIssues:
                    Text("Ticket Issue")
                case .Security:
                   Text("Security")
                case .Language:
                    Text("Langue")
                case .DarkMode:
                    Text("")
                case .HelpCenter:
                    Text("Help Center")
                case .InviteFriends:
                    Text("InviteFriends")
                case .Rateus:
                   Text("Rateus")
                case .Logout:
                   Text("Logout")
            }
            
            Spacer()
        }.padding(.horizontal)
            .padding(.top)
    }
}


