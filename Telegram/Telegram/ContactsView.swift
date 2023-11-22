//
//  ChatsView.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 14/11/23.
//

import SwiftUI

struct ContactsView: View {
    
    @State private var searchText = ""
    
   // var chat : ChatListView
    
    var body: some View {
        
        NavigationStack {
            List {
                
                 /* Button("Test") {
                    chat.Chats.append(User(UserName: "Amin", UserSurname: "ciao", UserImageName: "person.circle.fill", LastMessage: "ciao", Date: "Yesterday"))
                } */
                
                Text("Amin")// Your list content here
            }
                 .navigationTitle("Contacts")
            .searchable(text: $searchText) // This adds the search bar
             }

    }
}

#Preview {
   // let chatTest = chat
    ContactsView()
}
