//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by wk on 2020/8/20.
//  Copyright © 2020 CS193p. All rights reserved.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    // MARK: - 变量前添加修饰 private(set) ：该变量被外部只读，只能被本struct修改
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐠", "🙈", "🐂", "🐞", "🐳"]
        let numberOfPairs: Int = [3, 5][Int.random(in: 0...1)]
        return MemoryGame<String>(numverOfPairsOfCards: numberOfPairs) {pairIndex in
            return emojis[pairIndex]
        }  // 闭包
    }
    // MARK: - 访问model，为view提供数据访问
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - 传递用户意图
    
    func choose(card: MemoryGame<String>.Card) {
        // objectWillChange.send() 若model属性没有@Published修饰，则也可通过此方法publish更改
        model.choose(card: card)
    }
}

struct EmojiMemoryGame_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
