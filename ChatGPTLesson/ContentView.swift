//
//  ContentView.swift
//  ChatGPTLesson
//
//  Created by Oncu Can on 31.12.2022.
//

import SwiftUI

struct User {
    var name: String
    var email: String
}

struct ContentView: View {
    var user = User(name: "John Doe", email: "john@example.com")

    var body: some View {
        VStack {
            Text(user.name)
                .font(.title)
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
