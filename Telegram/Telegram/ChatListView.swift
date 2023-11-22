//
//  ChatListView.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 16/11/23.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var UserName: String
    var UserSurname: String
    var UserImageName: String
    var LastMessage: String
    var Date: String
}

struct ChatListView: View {
    
    @State private var searchText = ""
    @State private var isEditing = false
    @State private var isPresentingNewChat = false 
    
    var Chats: [User] = [
        User(UserName: "SHAGHAYEGH", UserSurname: "VALAEI", UserImageName: "shaghayegh", LastMessage: "Hi Pouya!", Date: "Today"),
        User(UserName: "MARK", UserSurname: "SMITH", UserImageName: "mark.smith", LastMessage: "A Beer tonight?", Date: "Yesterday"),
        User(UserName: "Luigi", UserSurname: "Gucci", UserImageName: "luigi.gucci", LastMessage: "😂😂", Date: "Yesterday"),
        User(UserName: "Clara", UserSurname: "Alfonsi", UserImageName: "clara.alfonsi", LastMessage: "🤬", Date: "10/11/23"),
        User(UserName: "Fabio", UserSurname: "Como", UserImageName: "fabio.como", LastMessage: "Sure!🫡", Date: "10/11/23"),
        User(UserName: "Salvatore", UserSurname: "Proietti", UserImageName: "salvattore", LastMessage: "?", Date: "7/10/23"),
        User(UserName: "Vanda", UserSurname: "Cancellieri", UserImageName: "vanda", LastMessage: "To Spain", Date: "6/10/23"),
        User(UserName: "Marco", UserSurname: "Pizzurro", UserImageName: "marco", LastMessage: "Maybe sandwich", Date: "4/10/23"),
        User(UserName: "Gennaro", UserSurname: "Dina", UserImageName: "Gennaro", LastMessage: "Missed Call", Date: "4/10/23"),
        User(UserName: "Viola", UserSurname: "Ditta", UserImageName: "viola", LastMessage: "A File", Date: "22/9/23"),
        User(UserName: "Nadia", UserSurname: "Leone", UserImageName: "nadia", LastMessage: "Thanks", Date: "20/9/23"),
        User(UserName: "Rebecca", UserSurname: "Figliola", UserImageName: "rebecca", LastMessage: "yub", Date: "2/7/23"),
        
    ]
    
    var body: some View {
        
        NavigationStack {
            List(Chats) { chat in
                NavigationLink(destination: Text("Private chat with \(chat.UserName)") ) {
                    
                    HStack(){
                        Image(chat.UserImageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            
                        
                        VStack(alignment: .leading, content: {
                            
                            HStack{
                                Text(chat.UserName)
                                    .font(.headline)
                                Text(chat.UserSurname)
                                    .font(.headline)
                            }
                            
                            Text(chat.LastMessage)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                           
                        })
                        
                        Spacer()
                        Text(chat.Date)
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        
                    }
                }
                
                
            }
            .listStyle(.plain)
            .navigationTitle("Chats")
            .navigationBarItems(trailing:
                                    Button(action: {
                isPresentingNewChat.toggle()
            }, label: {
                Image(systemName: "square.and.pencil")
                    .imageScale(.large)
            })
            
            )
            .sheet(isPresented: $isPresentingNewChat, content: {
                NewChatView(isPresented: $isPresentingNewChat)
            })
            .navigationBarItems(leading:
                                    Button(action: {
                isEditing.toggle()
            }, label: {
                Text(isEditing ? "Done" : "Edit")
            }))
            .searchable(text: $searchText)
            
        }
        
        
        
    }
}

#Preview {
    ChatListView()
}
