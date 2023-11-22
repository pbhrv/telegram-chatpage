//
//  chatgpt.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 17/11/23.
//


import SwiftUI

struct Chat5: Identifiable {
    var id = UUID()
    var contactName: String
    var lastMessage: String
    var timestamp: Date
    var systemImageName: String
}

struct ChatRow: View {
    var chat: Chat5

    var body: some View {
        NavigationLink(destination: Text("Chat details for \(chat.contactName)")) {
            HStack(spacing: 15) {
                Image(systemName: chat.systemImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))

                VStack(alignment: .leading, spacing: 5) {
                    Text(chat.contactName)
                        .font(.headline)
                    Text(chat.lastMessage)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Spacer()

                Text(chat.timestamp, style: .time)
                    .foregroundColor(.gray)
            }
            .padding(10)
        }
       
    }
}

struct ContentView5: View {
    let chats: [Chat5] = [
        Chat5(contactName: "John Doe", lastMessage: "Hello there!", timestamp: Date(), systemImageName: "person.circle"),
        Chat5(contactName: "Jane Smith", lastMessage: "How are you?", timestamp: Date().addingTimeInterval(-3600), systemImageName: "person.circle.fill"),
        Chat5(contactName: "Alice Johnson", lastMessage: "Good to see you!", timestamp: Date().addingTimeInterval(-7200), systemImageName: "person.circle")
    ]

    var body: some View {
        NavigationView {
            List(chats) { chat in
                ChatRow(chat: chat)
            }
            .navigationTitle("Chats")
        }
    }
}

#Preview {
    ContentView5()
}
