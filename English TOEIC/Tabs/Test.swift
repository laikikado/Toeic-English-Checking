//
//  Test.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/04/2021.
//

import SwiftUI

struct Test: View {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some View {
        HStack {
            Text("Coming Soon.")
                .multilineTextAlignment(.center)

        }.navigationBarTitle("Test")
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
