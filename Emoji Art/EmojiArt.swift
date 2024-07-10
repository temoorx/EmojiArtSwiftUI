//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Temoor on 09/07/2024.
//

import Foundation

struct EmojiArt{
    var background: URL?
    private(set) var emojis = [Emoji]()
    
    private var uniqueEmojiId = 0
    
    mutating func addEmoji(_ emoji: String, at position: Emoji.Position, size: Int){
        uniqueEmojiId += 1
        emojis.append(Emoji(id: uniqueEmojiId, string: emoji, position: position, size: size))
    }
    
    struct Emoji: Identifiable{
        var id: Int
        
        let string: String
        var position: Position
        var size: Int
        
        struct Position{
            var x: Int
            var y: Int
            
            static let zero = Self(x: 0, y: 0)
        }
    }

}
