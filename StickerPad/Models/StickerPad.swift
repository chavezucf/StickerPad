//
//  StickerPad.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation
import SwiftUI

struct StickerPad: Identifiable {
    var id: UUID
    var name: String
    var stickers: [PlacedSticker]
}

struct PlacedSticker: Identifiable {
    var id: UUID
    var sticker: Sticker
    var position: CGPoint
    var scale: CGFloat = 0.5
    var rotation: Angle = .zero
    var opacity: Double = 1.0
}
