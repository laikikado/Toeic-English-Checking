//
//  TestListPattern.swift
//  English TOEIC
//
//  Created by Paul Colombier on 19/09/2020.
//

import SwiftUI

struct TestListPattern: View {
    
    @Binding var solutionList:[String]
    @Binding var displayedList:[String]
    
    @State var randomWordNumber = Int.random(in: 0 ..< 83)
    @State var showTranslation = false
    
    var body: some View {
        VStack {
            HStack {
                Text("\(displayedList[randomWordNumber])")
                    .font(.largeTitle)
                
            }
            .padding(.vertical)
            Spacer()
            
            HStack {
                if showTranslation == true {
                Text("\(solutionList[randomWordNumber])")
                    .font(.largeTitle)
                }
            }
            .padding(.vertical)
            Spacer()
            
            HStack {
                Text("\(displayedList.count) words") 
            }
            .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
            .padding(.bottom)
            
            HStack {
                Button("Show translation") {
                    showTranslation = true
                }.padding()
                .disabled(showTranslation)

                Button("New word") {
                    showTranslation = false
                    let previousRandomWordNumber = randomWordNumber
                    randomWordNumber = Int.random(in: 0 ..< displayedList.count)
                    while previousRandomWordNumber == randomWordNumber {
                        randomWordNumber = Int.random(in: 0 ..< displayedList.count)
                    }
                }.padding()
            }.padding(.bottom)
        }.padding(.bottom)
    }
}

struct TestListPattern_Previews: PreviewProvider {
    static var previews: some View {
        TestListPattern(solutionList: .constant(["EnglishWord"]), displayedList:.constant(["FrenchWord"]))
            .previewLayout(.sizeThatFits)
    }
}
