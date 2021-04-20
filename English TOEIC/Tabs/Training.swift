//
//  Training.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/04/2021.
//

import SwiftUI

struct Training: View {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    @AppStorage("translationDirection") var translateSelection = 0
    
    @State var vocabularySelectionTab = true
    @State var trainingSelectionTab = false
    
    let translateSelectionList = ["French to English", "English to French"]

    var body: some View {
        Form {
            
            //TRANSLATION DIRECTION SECTION
            Section(header: TranslateSelectionHeader(), footer: TranslateSelectionFooter()) {
                Picker("Choose", selection: $translateSelection) {
                    ForEach(0..<translateSelectionList.count) {
                        Text(self.translateSelectionList[$0])
                    }
                }
            }
            
            //CHAPTER SECTION
            Section(header: AnimalsSelectionHeader()) {
                VStack {
                    NavigationLink(destination: LandAnimals(translateSelection: $translateSelection, selectionTab: $trainingSelectionTab)) {
                        Text("Land animals")
                    }
                }
                VStack {
                    NavigationLink(destination: SeaLife(translateSelection: $translateSelection, selectionTab: $trainingSelectionTab)) {
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
        }.navigationBarTitle("Train Your Vocabulary")
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct TranslateSelectionHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.left.arrow.right")
            Text("translation direction")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct TranslateSelectionFooter: View {
    var body: some View {
        HStack {
            Text("")
        }
    }
}

struct Training_Previews: PreviewProvider {
    static var previews: some View {
        Training()
    }
}
