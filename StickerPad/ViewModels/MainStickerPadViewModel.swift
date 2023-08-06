//
//  MainStickerPadViewModel.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation
import SwiftUI

class MainStickerPadViewModel: ObservableObject {
    @Published var currentStickerPad: StickerPad

    init(stickerPad: StickerPad) {
        self.currentStickerPad = stickerPad
    }

    func placeSticker(sticker: Sticker, at position: CGPoint) {
        let placedSticker = PlacedSticker(id: UUID(), sticker: sticker, position: position)
        currentStickerPad.stickers.append(placedSticker)
    }

    func removeSticker(sticker: Sticker) {
        currentStickerPad.stickers.removeAll(where: { $0.sticker.id == sticker.id })
    }

    func clearStickerPad() {
        currentStickerPad.stickers.removeAll()
    }

    func move(sticker: inout PlacedSticker, by translation: CGSize) {
        sticker.position = CGPoint(x: sticker.position.x + translation.width, y: sticker.position.y + translation.height)
    }

    
    func pickUp(sticker: PlacedSticker) {
        if let index = currentStickerPad.stickers.firstIndex(where: { $0.id == sticker.id }) {
            currentStickerPad.stickers[index].scale = 0.3
            currentStickerPad.stickers[index].opacity = 0.5
        }
    }

    func drop(sticker: PlacedSticker) {
        if let index = currentStickerPad.stickers.firstIndex(where: { $0.id == sticker.id }) {
            currentStickerPad.stickers[index].scale = 0.25
            currentStickerPad.stickers[index].opacity = 1.0
        }
    }


    func scale(sticker: PlacedSticker, by magnitude: CGFloat) {
        // You'll need to update the model to have a `scale` property for PlacedSticker
        // Assuming such a property exists:
        if let index = currentStickerPad.stickers.firstIndex(where: { $0.id == sticker.id }) {
            currentStickerPad.stickers[index].scale *= magnitude
        }
    }

    func rotate(sticker: PlacedSticker, by angle: Angle) {
        // Likewise, for rotation, the model should have a `rotation` property for PlacedSticker
        // Assuming it exists:
        if let index = currentStickerPad.stickers.firstIndex(where: { $0.id == sticker.id }) {
            currentStickerPad.stickers[index].rotation = angle
        }
    }
}

