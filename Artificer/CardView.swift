//
//  CardView.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//

import SwiftUI
struct CardView: View {
    var card: Card
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(card.title)
                .font(.title)
                .fontWeight(.bold)
            Text(card.description)
                .font(.body)
                .padding(.bottom, 10)
            Image(card.templateName ?? card.imageName)
                .resizable()
                .scaledToFit()
        }
    }
}
