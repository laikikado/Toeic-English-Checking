//
//  PickerSwitch.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/04/2021.
//

import SwiftUI

struct ModeSwitchView: View {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some View {
        Picker("Mode", selection: $isDarkMode) {
            Text("Light")
                .tag(false)
            Text("Dark")
                .tag(true)
        }.pickerStyle(SegmentedPickerStyle())
    }
}

struct ModeSwitchView_Previews: PreviewProvider {
    static var previews: some View {
        ModeSwitchView()
            .previewLayout(.sizeThatFits)
    }
}


