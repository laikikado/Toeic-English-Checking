//
//  ListPresentation.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//
import SwiftUI

struct ListPresentation: View {
    
    @Binding var englishList:[String]
    @Binding var frenchList:[String]
    
    @State var randomWordNumber = Int.random(in: 0 ..< 1)
    @State var showTranslation = false
    
    var body: some View {
        VStack {
            HStack {
                Text("\(frenchList[randomWordNumber])")
                    .font(.largeTitle)
                
            }
            .padding(.vertical)
            Spacer()
            
            HStack {
                if showTranslation == true {
                Text("\(englishList[randomWordNumber])")
                    .font(.largeTitle)
                }
            }
            .padding(.vertical)
            Spacer()
            
            HStack {
                Text("\(frenchList.count) words")
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
                    randomWordNumber = Int.random(in: 0 ..< frenchList.count)
                }.padding()
            }.padding(.bottom)
        }
    }
}

struct ListPresentation_Previews: PreviewProvider {
    static var previews: some View {
        ListPresentation(englishList: .constant(["EnglishWord"]), frenchList:.constant(["FrenchWord"]))
            .previewLayout(.sizeThatFits)
    }
}
