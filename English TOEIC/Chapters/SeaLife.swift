//
//  ContentView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct SeaLife: View {
    
    @State var enSeaLifeList = ["Very Soon !"]
    @State var frSeaLifeList = ["Comming soon"]

    var body: some View {
        NavigationView {
            TestListPattern(solutionList: $frSeaLifeList, displayedList: $enSeaLifeList)
        }.navigationBarTitle("Sea life, insects and bugs, birds")
    }
}

struct SeaLife_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
