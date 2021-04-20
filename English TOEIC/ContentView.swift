//
//  ContentView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        VStack { 
            if self.isActive {
                HomeView()
            } else {
                Color("LoadingAppColor")
                        .edgesIgnoringSafeArea(.vertical)
                        .overlay(
                            VStack {
                                Image("LogoWithoutColorBorder")
                                    .resizable()
                                    .frame(width: 150.0, height: 150.0)
                                Text("Voc'in")
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.top, 20.0)
                                    .padding(.bottom, 4.0)
                                Text("Fortifier votre vocabulaire puis testez vous !")
                        })
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
