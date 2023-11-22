//
//  PrivateChatView.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 20/11/23.
//

import SwiftUI

struct PrivateChatView: View {
    var user: User
    var body: some View {
            Text("Chat with \(user.UserName)")
            .navigationTitle(user.UserName)
        }
}
