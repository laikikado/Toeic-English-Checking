//
//  Settings.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

struct Settings: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var themeSelected = 0
    let themeSelectionList = ["Automatic", "Light Mode", "Dark Mode"]

    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Theme")
                    Spacer()
                    Text(colorScheme == .dark ? "Dark mode" : "Light mode")
                }
                /*
                HStack {
                    Picker("Choose", selection: $themeSelected) {
                        ForEach(0..<themeSelectionList.count) {
                            Text(self.themeSelectionList[$0])
                        }
                        //TODO
                        if themeSelected == 1 {
                            
                        } else if themeSelected == 2 {
                            
                        } else {
                            
                        }
                    }
                }*/
            }
        }.navigationBarTitle("Settings")
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .previewLayout(.sizeThatFits)
    }
}
