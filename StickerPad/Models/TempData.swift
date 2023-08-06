//
//  TempData.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation

struct TempData {
    // MARK: - Sample Stickers
    static let stickers: [Sticker] = [
        Sticker(id: UUID(), name: "Ice Cream", imageName: "IceCream", category: "IceCream", isInteractive: false, animationName: nil),
        Sticker(id: UUID(), name: "Popsicle", imageName: "Popsicle", category: "Popsicle", isInteractive: false, animationName: nil),
        Sticker(id: UUID(), name: "Soft Serve", imageName: "SoftServe", category: "IceCream", isInteractive: false, animationName: nil),
        Sticker(id: UUID(), name: "Coco Popsicle", imageName: "CocoPopsicle", category: "Popsicle", isInteractive: false, animationName: nil)
    ]
    
    // MARK: - Sample Sticker Packs
    static let stickerPacks: [StickerPack] = [
        StickerPack(id: UUID(), name: "Ice Cream Pack", description: "A collection of cute ice cream", stickers: [stickers[0],stickers[2]]),
        StickerPack(id: UUID(), name: "Popsicle Pack", description: "Popsicle stickers for cold lovers", stickers: [stickers[1]])
    ]
    
    // MARK: - Sample Placed Stickers
    static let placedStickers: [PlacedSticker] = [
        PlacedSticker(id: UUID(), sticker: stickers[0], position: CGPoint(x: 50, y: 50), scale: 0.25, rotation: .degrees(15)),
        PlacedSticker(id: UUID(), sticker: stickers[1], position: CGPoint(x: 200, y: 200), scale: 0.25, rotation: .degrees(-10))
    ]

    
    // MARK: - Sample StickerPad
    static let stickerPads: [StickerPad] = [
        StickerPad(id: UUID(), name: "My First StickerPad", stickers: placedStickers)
    ]
    
    // MARK: - Sample User Profile
    static let userProfiles: [UserProfile] = [
        UserProfile(id: UUID(), username: "Anika", stickerCollection: stickers, savedStickerPads: stickerPads)
    ]
    
    // MARK: - Sample Purchases
    static let purchases: [Purchase] = [
        Purchase(id: UUID(), stickerPackId: stickerPacks[0].id, dateOfPurchase: Date(), price: 0.99),
        Purchase(id: UUID(), stickerPackId: stickerPacks[1].id, dateOfPurchase: Date(), price: 1.99)
    ]
}

