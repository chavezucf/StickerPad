//
//  StickerPalletView.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import SwiftUI

struct StickerPalletView: View {
    @State var viewModel:StickerPalletViewModel = StickerPalletViewModel(availableStickers: TempData.stickers)
    @State private var isPalletVisible = true

    var body: some View {
        VStack {
            TextField("Search...", text: $viewModel.searchQuery)
                .padding()

            TabView {
                ForEach(viewModel.categories, id: \.self) { category in
                    GridView(
                        items: viewModel.stickers(in: category),
                        content: { sticker in
                            Image(sticker.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    )
                    .tabItem {
                        Text(category)
                    }
                }
            }

            Button(action: {
                withAnimation {
                    isPalletVisible.toggle()
                }
            }) {
                Text(isPalletVisible ? "Close Pallet" : "Open Pallet")
            }
            .padding(.bottom)
        }
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
        .padding([.top, .bottom], 100)
        .padding()
        .scaleEffect(isPalletVisible ? 1 : 0.25)
        .frame(width: UIScreen.main.bounds.width / 4, alignment: .center)
        .position(x: UIScreen.main.bounds.width * 0.875, y: UIScreen.main.bounds.height / 2)
    }
}

struct GridView<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var content: (Item) -> ItemView
    private let columns = [
        GridItem(.adaptive(minimum: 50))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    content(item)
                }
            }
            .padding()
        }
    }

    init(items: [Item], @ViewBuilder content: @escaping (Item) -> ItemView) {
        self.items = items
        self.content = content
    }
}



struct StickerPalletView_Previews: PreviewProvider {
    static var previews: some View {
        StickerPalletView()
    }
}
