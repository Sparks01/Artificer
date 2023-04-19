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
        GeometryReader { geometry in
            ZStack {
                // Template Image
                if let templateName = card.templateName {
                    Image(templateName)
                        .resizable()
                        .scaledToFit()
                }

                // Card Content
                VStack(alignment: .leading, spacing: 0) {
                    Text(card.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.145) // Adjust the x and y factors as needed

                    Text(card.description)
                        .font(.body)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.3) // Adjust the x and y factors as needed
                }
            }
        }
        .aspectRatio(1, contentMode: .fit) // Maintain the aspect ratio of the card
    }
}



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(title: "Example Card", description: "This is an example card description", image: nil, imageName: "template1", templateName: "template1"))
    }
}

