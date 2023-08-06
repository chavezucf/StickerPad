//
//  ContentView.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = MainStickerPadViewModel(stickerPad: TempData.stickerPads[0])
    var body: some View {
        MainStickerPadView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

