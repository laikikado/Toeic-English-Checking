//
//  PickerSwitch.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/04/2021.
//

import SwiftUI

struct PickerSwitch: View {

    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack {
            Picker("Mode", selection: $isDarkMode) {
                Text("Light")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct PickerSwitch_Previews: PreviewProvider {
    static var previews: some View {
        PickerSwitch()
            .previewLayout(.sizeThatFits)
    }
}


