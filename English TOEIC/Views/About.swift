//
//  About.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

let buildVersion: String = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
let appVersion: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String

struct About: View {
    
    var body: some View {
        Form {
            Section(header: InformationsAboutHeader()) {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("\(appVersion)")
                }
                HStack {
                    Text("Build")
                    Spacer()
                    Text("\(buildVersion)")
                }
            }
            Section {
                HStack {
                    Text("For any suggestions or feature request, please use the review sections on the App Store.")
                }.padding()
            }
            Section(header: ProfilHeader()) {
                HStack {
                    Text("Twitter")
                    Spacer()
                    Link("@Paul_Colombier", destination: URL(string: "https://twitter.com/Paul_Colombier")!)
                }
                HStack {
                    Text("Website")
                    Spacer()
                    Link("paulcolombier.fr", destination: URL(string: "https://www.paulcolombier.fr")!)
                }
            }
        }.navigationBarTitle("About")
    }
}

struct InformationsAboutHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "info.circle")
            Text("informations")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct ProfilHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
            Text("About me")
                .font(.subheadline)
        }
        .padding(.top)
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
            .previewLayout(.sizeThatFits)
    }
}

