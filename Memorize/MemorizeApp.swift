//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Mario D Portillo on 4/9/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
