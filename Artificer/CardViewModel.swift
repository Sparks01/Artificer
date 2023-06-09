//
//  CardViewModel.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//

import SwiftUI

class CardViewModel: ObservableObject {
    @Published var cards = [Card]()
    @Published var templates: [Template] = [
        Template(id: UUID(), title: "Template 1", imageName: "template1"),
        Template(id: UUID(), title: "Template 2", imageName: "template2"),
        Template(id: UUID(), title: "Template 3", imageName: "template3")
    ]
    @Published var selectedTemplate: Template?

    var title = "Title FPO"
    var text = "Text FPO"
    var imageName = "ImageName FPO"

    func addCard(card: Card) {
        cards.append(card)
    }
    
    func deleteCard(index: Int) {
        cards.remove(at: index)
    }

    func saveCard() {
        let card = Card(
            title: title,
            description: text,
            image: nil,
            imageName: imageName,
            templateName: selectedTemplate?.imageName
        )
        addCard(card: card)
    }
}
