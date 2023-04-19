//
//  AddCardView.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//

import SwiftUI
struct AddCardView: View {
    @StateObject var viewModel: CardViewModel
    @State private var selectedTemplateName: String?

    let templateNames = ["Template 1", "Template 2", "Template 3"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Details")) {
                    TextField("Title", text: $viewModel.title)
                    TextField("Text", text: $viewModel.text)
                }

                Section(header: Text("Template")) {
                    ForEach(templateNames, id: \.self) { name in
                        HStack {
                            Text(name)
                            Spacer()
                            if selectedTemplateName == name {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                          selectedTemplateName = name
                          viewModel.imageName = name.lowercased().replacingOccurrences(of: " ", with: "_") + ".jpg"
                        }
                    }
                    
                }
                
                Section() {
                    Button("Save") {
                        viewModel.saveCard()
                    }
                }
            }
            .navigationTitle("Add Card")
        }
    }
}
