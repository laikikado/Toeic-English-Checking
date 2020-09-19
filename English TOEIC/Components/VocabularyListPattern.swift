//
//  VocabularyListPattern.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/09/2020.
//

import SwiftUI

struct VocabularyListPattern: View {
    
    @Binding var englishList:[String]
    @Binding var frenchList:[String]

        
    var body: some View {
        let indexList = englishList.count
        List(0 ..< indexList) { item in
              HStack {
                Text(englishList[item]).bold()
                Spacer()
                Text(frenchList[item])
              }.padding(.vertical)
        }
    }
}

struct VocabularyListPattern_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyListPattern(englishList: .constant(["EnglishWord"]), frenchList:.constant(["FrenchWord"]))
            .previewLayout(.sizeThatFits)
    }
}

