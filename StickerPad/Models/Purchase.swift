//
//  Purchase.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation
struct Purchase: Identifiable {
    var id: UUID
    var stickerPackId: UUID
    var dateOfPurchase: Date
    var price: Double
}
