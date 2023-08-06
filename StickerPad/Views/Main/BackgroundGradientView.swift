//
//  BackgroundGradientView.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/6/23.
//

import SwiftUI
struct BackgroundGradientView: View {
    @Binding var isRainbow: Bool
    private var colors: [Color] {
        isRainbow ? [.red, .orange, .yellow, .green, .blue, .purple] : [.pink, .red]
    }
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundGradientView(isRainbow: .constant(true))
}
