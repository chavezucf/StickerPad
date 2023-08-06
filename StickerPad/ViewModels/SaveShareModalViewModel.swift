//
//  SaveShareModalViewModel.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation

class SaveShareModalViewModel: ObservableObject {
    @Published var selectedStickerPad: StickerPad

    init(stickerPad: StickerPad) {
        self.selectedStickerPad = stickerPad
    }

    func saveStickerPad() {
        // Todo Logic to save the sticker pad
    }

    func shareStickerPad() {
        // Todo Logic to share the sticker pad
    }
}

