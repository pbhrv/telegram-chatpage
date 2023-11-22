//
//  chatlistviewchatgpt.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 16/11/23.
//

import SwiftUI

struct Chat: Identifiable {
    var id = UUID()
    var contactName: String
    var lastMessage: String
    var timestamp: Date
}

struct ChatListViewG: View {
    let chats: [Chat] = [
        Chat(contactName: "John Doe", lastMessage: "Hello there!", timestamp: Date()),
        Chat(contactName: "Jane Smith", lastMessage: "How are you?", timestamp: Date().addingTimeInterval(-3600)),
        Chat(contactName: "Alice Johnson", lastMessage: "Good to see you!", timestamp: Date().addingTimeInterval(-7200))
    ]

    var body: some View {
        NavigationView {
            List(chats) { chat in
                NavigationLink(destination: Text("Chat details for \(chat.contactName)")) {
                    VStack(alignment: .leading) {
                        Text(chat.contactName)
                            .font(.headline)
                        Text(chat.lastMessage)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Chats")
        }
    }
}
