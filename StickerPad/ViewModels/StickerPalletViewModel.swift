//
//  StickerPalletViewModel.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation

class StickerPalletViewModel: ObservableObject {
    @Published var availableStickers: [Sticker]
    @Published var searchQuery: String = ""
    @Published var selectedSticker: Sticker?
    
    init(availableStickers: [Sticker]) {
        self.availableStickers = availableStickers
    }

    // Assume that categories are hardcoded for now
    var categories: [String] {
        ["IceCream", "Popsicle"]
    }

    // Stickers sorted by category
    func stickers(in category: String) -> [Sticker] {
        var test = availableStickers.filter { sticker in
            sticker.category == category //&&
            //sticker.name.lowercased().contains(searchQuery.lowercased())
        }
        return test
    }

    // Select a sticker
    func selectSticker(_ sticker: Sticker) {
        selectedSticker = sticker
    }
}


