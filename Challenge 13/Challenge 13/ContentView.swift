//
//  ContentView.swift
//  Challenge 13
//
//  Created by Mario D Portillo on 4/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 2000
    @State private var slot1 = ""
    @State private var slot2 = ""
    @State private var slot3 = ""
    
    var body: some View {
        VStack{
                Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .padding(20.0)
                Spacer()
            Text("Credits: " + String(credits))
                .font(.subheadline)
                .foregroundColor(Color.black)
                Spacer()
                HStack{
                    Spacer()
                    Image(slot1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(slot2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(slot3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Spacer()
            Button("Spin"){
                let slotRad1 = Int.random(in: 1...3)
                let slotRad2 = Int.random(in: 1...3)
                let slotRad3 = Int.random(in: 1...3)
                
                if slotRad1 == 1 {
                    slot1 = "apple"
                }else if slotRad1 == 2 {
                    slot1 = "cherry"
                }else {
                    slot1 = "star"
                }
                if slotRad2 == 1 {
                    slot2 = "apple"
                }else if slotRad2 == 2 {
                    slot2 = "cherry"
                }else {
                    slot2 = "star"
                }
                if slotRad3 == 1 {
                    slot3 = "apple"
                }else if slotRad3 == 2 {
                    slot3 = "cherry"
                }else {
                    slot3 = "star"
                }
                if slot1 == slot2 && slot2 == slot3 {
                    // Match
                    credits += 15
                }
                else {
                    credits -= 5
                }
            }
            // Set padding for all edges
            .padding()
            // Then adjust the left and right padding to be bigger
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
