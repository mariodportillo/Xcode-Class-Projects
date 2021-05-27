//
//  ContentView.swift
//  Challenge 12
//
//  Created by Mario D Portillo on 4/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0
    @State private var shouldDecrease = false
    
    func increase() -> Int{
        let incRand = Int.random(in: 1...10)
        return score + incRand
    }
    func decrease () -> Int{
        let decRand = Int.random(in: 1...10)
        return score - decRand
    }
    
    var body: some View {
        VStack{
            Button(action: {
                if shouldDecrease == false {
                    score = increase()
                }
                else {
                    score = decrease()
                }
                if score > 50 {
                    shouldDecrease = true
                }
                else if score < 0 {
                    shouldDecrease = false
                }
            }, label: {
                Text("Click Me")
            })
            
            Text(String(score))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
