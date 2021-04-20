//
//  HomeView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            
            // VOCABULARY TABVIEW
            NavigationView {
                Vocabulary()
            }
            .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Vocabulary")
            }
            
            // TRAINING TABVIEW
            NavigationView {
               Training()
            }
            .tabItem {
                    Image(systemName: "person.crop.rectangle.fill")
                    Text("Training")
            }
            
            //TEST TABVIEW
            NavigationView {
                Test()
            }.disabled(true)
            .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Test")
            }
            
            //ABOUT TABVIEW
            More()
            .tabItem {
                    Image(systemName: "ellipsis.circle.fill")
                    Text("More")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
