//
//  MainStickerPadView.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import SwiftUI
struct MainStickerPadView: View {
    @ObservedObject var viewModel: MainStickerPadViewModel
    @ObservedObject var stickerPalletViewModel = StickerPalletViewModel(availableStickers: TempData.stickers)
    @State private var initialPosition: CGPoint?
    @State private var isRainbow: Bool = false

    // Define the default position for new stickers
    let defaultStickerPosition = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)

    var body: some View {
        ZStack {
            BackgroundGradientView(isRainbow: $isRainbow)
                .overlay(
                    // Placed Stickers
                    ForEach(viewModel.currentStickerPad.stickers.indices, id: \.self) { index in
                        StickerView(placedSticker: $viewModel.currentStickerPad.stickers[index])
                    }
                )
            StickerPadButtons(isRainbow: $isRainbow)
            StickerPalletView(viewModel: stickerPalletViewModel)
        }
        .onReceive(stickerPalletViewModel.$selectedSticker) { sticker in
            guard let sticker = sticker else { return }
            viewModel.placeSticker(sticker: sticker, at: defaultStickerPosition)
            stickerPalletViewModel.selectedSticker = nil // Reset the selected sticker
        }
    }
}

struct MainStickerPadView_Previews: PreviewProvider {
    static var previews: some View {
        MainStickerPadView(viewModel: MainStickerPadViewModel(stickerPad: TempData.stickerPads[0]))
    }
}
