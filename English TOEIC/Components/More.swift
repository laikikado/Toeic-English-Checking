//
//  More.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

struct More: View {
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: InformationsMoreHeader()) {
                    VStack {
                        NavigationLink(destination: Settings()) {
                            Text("Settings")
                        }
                    }
                    VStack {
                        NavigationLink(destination: About()) {
                            Text("About")
                        }
                    }
                    VStack {
                        NavigationLink(destination: About()) {
                            Text("Credits")
                        }.disabled(true)
                    }
                }
            }.navigationBarTitle("More")
        }
    }
}

struct InformationsMoreHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "ellipsis")
            Text("general")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct More_Previews: PreviewProvider {
    static var previews: some View {
        About()
            .previewLayout(.sizeThatFits)
    }
}

