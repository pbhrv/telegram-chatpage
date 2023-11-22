//
//  NewChatView.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 20/11/23.
//

import SwiftUI

struct NewChatView: View {
    @Binding var isPresented: Bool

    var body: some View {
        NavigationStack {
            ContactsView()
                .navigationBarTitle("New Chat", displayMode: .inline)
                .navigationBarItems(
                    leading: Button(action: {
                        isPresented = false
                    }) {
                        Text("Cancel")
                    }
                )
        }
    }
}

