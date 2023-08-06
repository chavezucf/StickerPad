//
//  UserProfile.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation
struct UserProfile: Identifiable {
    var id: UUID
    var username: String
    var stickerCollection: [Sticker]
    var savedStickerPads: [StickerPad]
}
