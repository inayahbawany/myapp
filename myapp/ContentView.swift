//
//  ContentView.swift
//  myapp
//
//  Created by scholar on 27/07/2023.
//

import SwiftUI
//COMMENT

struct ContentView: View {
    @State private var next = ""
    @State private var titleText = "My name is Inayah, what about you?"
    
    var body: some View {
        
        VStack (spacing: 75.0) {
            Text(titleText)
             
            TextField("Type your name here..", text: $next)
            Text("All about me")
                .font(.largeTitle)
                .fontWeight(.bold)
          
            Image("proflePic")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
            
            Spacer()
            Button("Next") {
                titleText = "Hello, \(next)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
    }
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
