//
//  More.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

struct More: View {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
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
                }
            }.navigationBarTitle("More")
            .preferredColorScheme(isDarkMode ? .dark : .light)

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
        More()
            .previewLayout(.sizeThatFits)
    }
}

