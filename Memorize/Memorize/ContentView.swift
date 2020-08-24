//
//  ContentView.swift
//  Memorize
//
//  Created by wk on 2020/8/18.
//  Copyright © 2020 CS193p. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(self.viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .padding(4)
        .font(viewModel.cards.count / 2 > 4 ? .body : .largeTitle)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    
    var body: some View {
        ZStack() {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.yellow)
                RoundedRectangle(cornerRadius: 10.0).stroke()
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.yellow)
            }
        }.aspectRatio(2/3, contentMode: .fit)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
