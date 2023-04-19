//
//  Card.swift
//  Artificer
//
//  Created by Jose Munoz on 4/7/23.
//

import SwiftUI
import UIKit

class Card {
    var title: String
    var text: String
    var imageName: String
    var image: UIImage?

    init(title: String, text: String, imageName: String, image: UIImage? = nil) {
        self.title = title
        self.text = text
        self.imageName = imageName
        self.image = image
    }
}
