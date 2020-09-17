//
//  ContentView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack(alignment: .leading) {
                    NavigationLink(destination: Animals()) {
                        Text("Animals")
                    }
                    .padding(.vertical)
                    NavigationLink(destination: SeaLife()) {
                        Text("Sea life, insects and bugs, birds")
                    }
                    Button("Companies") {
                    }
                    .padding(.vertical)
                    Button("Human resources and accounting") {
                    }
                    Button("Marketing and purchasing") {
                    }
                    .padding(.vertical)
                }.navigationBarTitle("TOEIC Vocabulary")
            }.font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
