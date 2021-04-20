//
//  Vocabulary.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/04/2021.
//

import SwiftUI

struct Vocabulary: View {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    @AppStorage("translationDirection") var translateSelection = 0

    @State var vocabularySelectionTab = true
    @State var trainingSelectionTab = false

    let translateSelectionList = ["French to English", "English to French"]
    
    var body: some View {
        Form {
            //ANIMALS SECTION
            Section(header: AnimalsSelectionHeader()) {
                VStack {
                    NavigationLink(destination: LandAnimals(translateSelection: $translateSelection, selectionTab: $vocabularySelectionTab)) {
                        Text("Land animals")
                    }
                }
                VStack {
                    NavigationLink(destination: SeaLife(translateSelection: $translateSelection, selectionTab: $vocabularySelectionTab)) {
                        Text("Sea life")
                    }
                }
                VStack {
                    NavigationLink(destination: SeaLife(translateSelection: $translateSelection, selectionTab: $vocabularySelectionTab)) {
                        Text("Insects and bugs")
                    }.disabled(true)
                }
                VStack {
                    NavigationLink(destination: SeaLife(translateSelection: $translateSelection, selectionTab: $vocabularySelectionTab)) {
                        Text("Birds")
                    }.disabled(true)
                }
            }
        }.navigationBarTitle("Vocabulary")
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct AnimalsSelectionHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "hare")
            Text("Animals")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct Vocabulary_Previews: PreviewProvider {
    static var previews: some View {
        Vocabulary()
    }
}
