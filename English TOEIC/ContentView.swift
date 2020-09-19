//
//  ContentView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var vocabularySelectionTab = true
    @State var testSelectionTab = false
    @State var translateSelection = 0
    let translateSelectionList = ["French to English", "English to French"]
    
    var body: some View {
        TabView {
            
            // VOCABULARY TABVIEW
            NavigationView {
                Form {

                    //CHAPTER SECTION
                    Section(header: ChapterSelectionHeader()) {
                        VStack {
                            NavigationLink(destination: Animals(translateSelection: $translateSelection, selectionTab: $vocabularySelectionTab)) {
                                Text("Animals")
                            }
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Sea life, insects and bugs, birds")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Companies")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Human resources and accounting")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Marketing and purchasing")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text(". . .")
                            }.disabled(true)
                        }
                    }
                }.navigationBarTitle("Vocabulary")
            }
            .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Vocabulary")
            }
            
            // TEST TABVIEW
            NavigationView {
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
                    Section(header: ChapterSelectionHeader()) {
                        VStack {
                            NavigationLink(destination: Animals(translateSelection: $translateSelection, selectionTab: $testSelectionTab)) {
                                Text("Animals")
                            }
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Sea life, insects and bugs, birds")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Companies")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Human resources and accounting")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text("Marketing and purchasing")
                            }.disabled(true)
                        }
                        VStack {
                            NavigationLink(destination: SeaLife()) {
                                Text(". . .")
                            }.disabled(true)
                        }
                    }
                }.navigationBarTitle("Vocabulary Test")
            }
            .tabItem {
                    Image(systemName: "person.crop.rectangle.fill")
                    Text("Test")
            }
            
            //ABOUT TABVIEW
            More()
            .tabItem {
                    Image(systemName: "ellipsis.circle.fill")
                    Text("More")
            }
        }
    }
}

// HEADERS & FOOTERS
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

struct ChapterSelectionHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "books.vertical")
            Text("chapters")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
