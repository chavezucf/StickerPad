//
//  Sticker.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation
struct Sticker: Identifiable {
    var id: UUID
    var name: String
    var imageName: String
    var category: String
    var isInteractive: Bool
    var animationName: String?
}
