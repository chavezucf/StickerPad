//
//  StickerPack.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation
struct StickerPack: Identifiable {
    var id: UUID
    var name: String
    var description: String
    var stickers: [Sticker]
}
