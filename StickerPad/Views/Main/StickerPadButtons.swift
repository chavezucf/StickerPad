//
//  StickerPadButtons.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/6/23.
//

import SwiftUI

struct StickerPadButtons: View {
    @Binding var isRainbow: Bool
    var body: some View {
        VStack {
            HStack {
                // Exit button
                Button(action: {
                    // Exit logic
                }) {
                    Image(systemName: "xmark.circle")
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                // Access sticker pallet
                Button(action: {
                    // Show sticker pallet logic
                }) {
                    Image(systemName: "tray.and.arrow.up")
                        .padding()
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            HStack {
                // Zoom out
                Button(action: {
                    //viewModel.zoomOut()
                }) {
                    Image(systemName: "minus.magnifyingglass")
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                // Save button
                Button(action: {
                    isRainbow.toggle()
                }) {
                    Image(systemName: "arrow.counterclockwise")
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                // Zoom in
                Button(action: {
                    //viewModel.zoomIn()
                }) {
                    Image(systemName: "plus.magnifyingglass")
                        .padding()
                        .foregroundColor(.white)
                }
            }
        }
        .padding()
    }
}
    
struct StickerPadButtons_Previews: PreviewProvider {
    static var previews: some View {
        StickerPadButtons(isRainbow: .constant(true))
    }
}

    
    
