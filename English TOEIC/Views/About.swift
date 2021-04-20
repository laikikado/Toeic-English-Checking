//
//  About.swift
//  English TOEIC
//
//  Created by Paul Colombier on 18/09/2020.
//

import SwiftUI

let buildVersion: String = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
let appVersion: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String

let systemVersion = UIDevice.current.systemVersion

struct About: View {
    

    var body: some View {
        Form {
            //INFORMATIONS SECTION
            Section(header: InformationsAboutHeader()) {
                HStack {
                    Image(systemName: "applelogo")
                    Text("iOS version")
                        .padding(.leading, 13.0)
                    Spacer()
                    Text("\(systemVersion)")
                }
                HStack {
                    Image(systemName: "arrow.up.square")
                    Text("App Version")
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("\(appVersion) " + "(\(buildVersion))")
                }
                HStack {
                    Image(systemName: "calendar")
                    Text("Last updated on")
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("04/20/2021")
                }
            }
            //ABOUT ME SECTION
            Section(header: ProfilHeader()) {
                HStack {
                    Image(systemName: "envelope")
                    Link("Email", destination: URL(string: "mailto:contact@paulcolombier.fr?subject=[Feedback]%20Voc'In%20-%20Version%20\(appVersion)%20(\(buildVersion))")!)
                        .padding(.leading, 10.0)
                }
                HStack {
                    Image(systemName: "megaphone")
                    Link("Twitter", destination: URL(string: "https://twitter.com/Paul_Colombier")!)
                        .padding(.leading, 8.0)
                }
                HStack {
                    Image(systemName: "safari")
                    Link("Website", destination: URL(string: "https://www.paulcolombier.fr")!)
                        .padding(.leading, 11.0)
                }
            }
            //APPLICATION SECTION
            Section(header: ReviewHeader()) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    ShareSheet()
                        .padding(.leading, 11.0)
                }
                HStack {
                    Image(systemName: "star.leadinghalf.fill")
                    Link("Write Review", destination: URL(string: "https://apps.apple.com/app/id375380948?action=write-review")!)
                        .padding(.leading, 9.0)
                }
            }
            Section(footer: InfoFooter()) {
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

struct ReviewHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "apps.iphone")
            Text("Application")
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

struct InfoFooter: View {
    var body: some View {
        HStack(alignment: .bottom) {
            Text("Made with")
            Image(systemName: "heart.fill")
                .padding(.horizontal, -4.0)
            Text("in Montpellier.")
        }
        
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
            .previewLayout(.sizeThatFits)
    }
}

