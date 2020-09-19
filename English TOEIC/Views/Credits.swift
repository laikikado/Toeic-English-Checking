//
//  Credits.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

struct Credits: View {
        
    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Icon made by ... from www.flaticon.com")
                }
                
            }
        }.navigationBarTitle("Settings")
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        Credits()
            .previewLayout(.sizeThatFits)
    }
}

