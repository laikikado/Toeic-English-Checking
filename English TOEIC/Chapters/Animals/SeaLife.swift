//
//  ContentView.swift
//  English TOEIC
//
//  Created by Paul Colombier on 17/09/2020.
//

import SwiftUI

struct SeaLife: View {
    
    @Binding var translateSelection:Int
    @Binding var selectionTab:Bool
    
    @State var enSeaLifeList = ["Another kettle of fish", "Bait", "Barracuda", "Bass", "Catfish", "Clams", "Codfish", "Coral", "Crawfish", "Crayfish", "Deep-sea fishing", "Dolphin", "Eel", "Fish out of water (to be a)", "Fish bones", "Fish scales", "Fishing", "Fishmonger / merchant", "Frog", "Gills", "Jellyfish", "Lobster", "Manatee", "Monkfish", "Moray eel", "Mussel", "Octopus", "Oyster", "Salmon", "Sand", "Scallops", "School of fish", "Scuba diving", "Sea bream", "Seahorse", "Seal", "Shark", "Shucks clams", "Squid", "Stingray", "Swordfish", "Tadpole", "Toad", "Trout", "Turtle / tortoise", "Walrus", "Whale", "Whelks", "Winkle"]
    @State var frSeaLifeList = ["Une autre paire de manches", "L'appât", "Le barracuda", "La perche", "Le poisson-chat", "Les palourdes", "Le cabillaud / la morue", "Le corail", "L'écrevisse", "La langouste", "La pêche en haute mer", "Le dauphin", "L'anguille", "Ne pas être dans son élément", "Les arêtes de poisson", "Les écailles de poisson", "La pêche", "Le poissonnier / poissonnière", "La grenouille", "Les ouïes", "La méduse", "Le homard", "Le lamantin", "La lotte", "La murène", "La moule", "La pieuvre / poulpe", "L'huître", "Le saumon", "Le sable", "Les coquilles Saint-Jacques", "Une bande de poissons", "La plongée sous-marine", "La dorade", "L'hippocampe", "Le phoque", "Le requin", "Écailler les palourdes", "L'encornet / calamar", "La raie", "L'espadon", "Le têtard", "Le crapaud", "La truite", "La tortue de mer / terrestre", "Le morse", "La baileine", "Les bulots", "Le bigorneau"]

    var body: some View {
        HStack {
            if !selectionTab {
                if translateSelection == 0 {
                    TestListPattern(solutionList: $enSeaLifeList, displayedList: $frSeaLifeList)
                } else {
                    TestListPattern(solutionList: $frSeaLifeList, displayedList: $enSeaLifeList)
                }
            } else {
                VocabularyListPattern(englishList: $enSeaLifeList, frenchList: $frSeaLifeList)
            }
        }
        .navigationBarTitle("Sea Life")
    }
}

    struct SeaLife_Previews: PreviewProvider {
        static var previews: some View {
            SeaLife(translateSelection: .constant(0), selectionTab: .constant(true))
                .previewLayout(.sizeThatFits)
            SeaLife(translateSelection: .constant(0), selectionTab: .constant(false))
                .previewLayout(.sizeThatFits)
        }
    }

