//
//  ContentView.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        TabView(selection: $selection) {
                   // Tab 1
                    ContactsView()
                       .tabItem {
                           Image(systemName: "person.circle.fill")
                           Text("Contacts")
                    }
                       .tag(1)
                   
                   // Tab 2
                   Text("Calls history")
                       .tabItem {
                           Image(systemName: "phone.fill")
                           Text("Calls")
                    }
                   
                   // Tab 3
                    ChatListView()
                       .tabItem {
                           Image(systemName: "bubble.left.and.bubble.right.fill")
                           Text("Chats")
                    }
                       .tag(0)
                    
                    //Tab 4
                    Text("Settings")
                        .tabItem {
                            Image(systemName: "gear")
                            Text("Settings")
                    }
                
        }
    }
}

#Preview {
    ContentView()
}
