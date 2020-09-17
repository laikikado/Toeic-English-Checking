//
//  ContentView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct SeaLife: View {
    
    let enSeaLifeList = [""]
    let frSeaLifeList = [""]
    @State var randomWordNumber = 0 //Int.random(in: 0 ..< 82)
    @State var showTranslation = false
    
    var body: some View {
            NavigationView {
                VStack {
                    HStack {
                        Text("\(frSeaLifeList[randomWordNumber])")
                            .font(.largeTitle)
                        
                    }
                    .padding(.vertical)
                    Spacer()
                    
                    HStack {
                        if showTranslation == true {
                        Text("\(enSeaLifeList[randomWordNumber])")
                            .font(.largeTitle)
                        }
                    }
                    .padding(.vertical)
                    Spacer()
                    
                    HStack {
                        Button("Show translation") {
                            showTranslation = true
                        }.padding()
                        .disabled(showTranslation)

                        Button("New word") {
                            showTranslation = false
                            //randomWordNumber = Int.random(in: 0 ..< frSeaLifeList.count)
                        }.padding()
                    }
                    .padding(.bottom)
                   
            }
            }.navigationBarTitle("Sea life, insects and bugs, birds")
    }
}

struct SeaLife_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
