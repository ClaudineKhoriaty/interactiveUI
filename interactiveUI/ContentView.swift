//
//  ContentView.swift
//  interactiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "I'd love to know your name !"
    
    
    
    var body: some View {
        NavigationStack{
            VStack {
                Text(textTitle)
                Text("This is my interactive UI 👩🏼‍💻")
                TextField("Enter name here", text:  $name)
                    .multilineTextAlignment(.center)
                Button("click click!") {
                    textTitle = "Welcome \(name) !"
                    name = ""
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
