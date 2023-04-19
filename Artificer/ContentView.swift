//
//  ContentView.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CardViewModel()

    var body: some View {
        CardListView(viewModel: viewModel) { card in
            VStack(alignment: .leading) {
                Text(card.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(card.description)
                    .font(.body)
                    .padding(.bottom, 10)
                if let imageData = card.image, let uiImage = UIImage(data: imageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}
