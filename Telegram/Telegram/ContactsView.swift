//
//  ChatsView.swift
//  Telegram
//
//  Created by POUYA BEHRAVESHMARAND on 14/11/23.
//

import SwiftUI

struct ContactsView: View {
    
    @State private var searchText = ""
    
 
    
    var body: some View {
        
        NavigationStack {
            List {
                
                 
                
                Text("Amin")
            }
                 .navigationTitle("Contacts")
            .searchable(text: $searchText)
             }

    }
}

#Preview {

    ContactsView()
}
