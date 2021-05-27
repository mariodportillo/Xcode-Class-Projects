//
//  ContentView.swift
//  Challenge 11
//
//  Created by Mario D Portillo on 4/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0

    var body: some View {
        VStack {
            Text("Press these Buttons")
                .padding()
            HStack {
                Button(action: {
                    
                    //adds +2
                    score += 2
    
                }, label: {
                    Text("Add")
                })
                Button(action: {
                    
                    //Multiply by 2
                    score *= 2
                    
                }, label: {
                    Text("Multiply")
                })
            }
            Text(String(score))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
