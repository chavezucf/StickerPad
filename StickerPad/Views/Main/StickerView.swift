//
//  StickerView.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/6/23.
//

import SwiftUI

struct StickerView: View {
    @Binding var placedSticker: PlacedSticker
    @State private var dragOffset = CGSize.zero
    @GestureState private var magnification: CGFloat = 1.0
    @GestureState private var rotation: Angle = .zero

    var body: some View {
        Image(placedSticker.sticker.imageName)
            .resizable()
            .scaledToFit()
            .scaleEffect(placedSticker.scale * magnification)
            .rotationEffect(placedSticker.rotation + rotation)
            .offset(dragOffset)
            .gesture(
                SimultaneousGesture(
                    DragGesture()
                        .onChanged { value in
                            dragOffset = value.translation
                        }
                        .onEnded { value in
                            placedSticker.position = CGPoint(
                                x: placedSticker.position.x + value.translation.width,
                                y: placedSticker.position.y + value.translation.height
                            )
                            dragOffset = .zero
                        },
                    MagnificationGesture()
                        .updating($magnification) { currentState, gestureState, _ in
                            gestureState = currentState
                        }
                        .onEnded { value in
                            placedSticker.scale *= value
                        }//,
//                    RotationGesture()
//                        .updating($rotation) { currentState, gestureState, _ in
//                            gestureState = currentState
//                        }
//                        .onEnded { value in
//                            placedSticker.rotation += value
//                        }
                )
            )
            .animation(.default, value: dragOffset)
    }
}

struct StickerView_Previews: PreviewProvider {
    static var previews: some View {
        StickerView(placedSticker: .constant(TempData.placedStickers[0]))
    }
}
