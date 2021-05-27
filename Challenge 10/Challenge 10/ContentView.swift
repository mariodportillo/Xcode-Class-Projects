//
//  ContentView.swift
//  Challenge 10
//
//  Created by Mario D Portillo on 3/29/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button("Click Me") {
                print("Hello World")
            }
            Button(action: {
                print("Why hello there")
            },
                label: {
                    HStack{
                        Image(systemName:"play.fill")
                        Text("Hello")
                    }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
