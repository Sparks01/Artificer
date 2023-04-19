//
//  CardListView.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//

import SwiftUI
struct CardListView<Content: View>: View {
    @ObservedObject var viewModel: CardViewModel
    var content: (Card) -> Content

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.cards) { card in
                    NavigationLink(destination: CardView(card: card)) {
                        content(card)
                    }
                }
                .onDelete(perform: deleteCard)
            }
            .navigationBarTitle("My Cards")
            .navigationBarItems(trailing: NavigationLink(destination: AddCardView(viewModel: viewModel)) {
                Text("Add Card")
            })
        }
    }

    func deleteCard(at offsets: IndexSet) {
        viewModel.deleteCard(index: offsets.first!)
    }
}
