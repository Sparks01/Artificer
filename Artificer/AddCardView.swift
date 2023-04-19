//
//  AddCardView.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//

import SwiftUI

struct AddCardView: View {
    @ObservedObject var viewModel: CardViewModel

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Details")) {
                    TextField("Title", text: $viewModel.title)
                    TextField("Text", text: $viewModel.text)
                }

                Section(header: Text("Template")) {
                    TemplateListView(viewModel: viewModel)
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

struct TemplateListView: View {
    @ObservedObject var viewModel: CardViewModel

    var body: some View {
        ForEach(viewModel.templates) { template in
            HStack {
                Text(template.title)
                Spacer()
                if viewModel.selectedTemplate?.id == template.id {
                    Image(systemName: "checkmark")
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                viewModel.selectedTemplate = template
            }
        }
    }
}
