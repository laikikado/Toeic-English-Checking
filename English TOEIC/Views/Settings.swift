//
//  Settings.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

struct Settings: View {
        
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        Form {
            Section(header: ThemeModeSettingsHeader()) {
                VStack {
                        ModeSwitchView()
                }
            }
        }
        .navigationBarTitle("Settings")
        .preferredColorScheme(isDarkMode ? .dark : .light)

    }
}

struct ThemeModeSettingsHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "lightbulb")
            Text("theme mode")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .previewLayout(.sizeThatFits)
    }
}
