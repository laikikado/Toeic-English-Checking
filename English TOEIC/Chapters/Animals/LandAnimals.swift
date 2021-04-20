//
//  LandAnimals.swift
//  English TOEIC
//
//  Created by Paul Colombier on 21/09/2020.
//

import SwiftUI

struct LandAnimals: View {
    
    @Binding var translateSelection:Int
    @Binding var selectionTab:Bool
    
    @State var enAnimalsList = ["Anteater", "Antlers", "Bat", "Bear", "Bear Cub", "Beaver", "Bitch", "Boar", "Breed (to)", "Bull", "Cackle (to)", "Calf (calves)", "Camel", "Cat", "Chick", "Chicken", "Cow", "Deer", "Doe", "Dog", "Duck", "Duckling", "Eager Beaver (an)", "Eagle", "Elk", "Ewe", "Fallow deer", "Feather", "Foal", "Force-feed (to)", "Fowl", "Fox", "Game", "Goat", "Goose (i.p: geese)", "Hare", "Hen", "Herd of elephants", "Hog / swine", "Horse", "Kitten", "Lamb", "Lay an egg (to)", "Lion", "Lion cub", "Lioness", "Mammal", "Mare", "Mink", "Mole", "Monkey", "Moose", "Mouse (i.p: mice)", "Offspring", "Ostrich", "Ox (i.p: oxen)", "Pack (of dogs)", "Partridge", "Peacock", "Pig", "Pluck feathers (to)", "Puppy", "Purebred", "Rabbit", "Ram", "Red deer (i.p: red deer)", "reindeer (i.p: reindeer)", "Roe deer (i.p: roe deer)", "Rooster / cock", "Sheep (i.p: sheep)", "Skunk", "Sow", "Squirrel", "Squirrel away (to)", "Stallion", "Strut like a peacock (to)", "Swan", "Thoroughbred", "Turkey", "Tusks", "Udder", "Vixen", "Wolf (i.p: wolves)"]
    
    @State var frAnimalsList = ["Fourmilier", "Les bois (du cerf)", "La chauve-souris", "L'ours", "L'ourson", "Le castor", "La chienne", "Le sanglier", "Elever, faire l'élevage de", "Le taureau", "Caqueter", "Le veau (les veaux)", "Le chameau", "Le chat" ,"Le poussin", "Le poulet", "La vache", "Le cerf", "La biche / La lapine", "Le chien", "Le canard", "Le caneton", "Une personne zélée", "L'aigle", "L'élan / le wapiti", "La brebis", "Le daim", "La plume", "Le poulain", "Gaver", "La volaille", "Le renard", "Le gibier", "La chèvre", "L'oie (les oies)", "Le lièvre", "La poule", "Le troupeau d'éléphants", "Le porc", "Le cheval", "Le chaton", "L'agneau", "Pondre un oeuf", "Le lion", "Le lionceau", "La lionne", "Le mammifère", "La jument", "Le vison", "La taupe", "Le singe", "L'élan", "La souris (les souris)", "La progéniture", "L'autruche", "Le boeuf (les boeufs)", "La meute (de chiens)", "Le perdrix", "Le paon", "Le cochon", "Plumer", "Le chiot", "De race", "Le lapin", "Le bélier", "Le cerf (les cerfs)", "Le renne (les rennes)", "Le chevreuil (les chevreuils)", "Le coq", "Le mouton (les moutons)", "Le putois", "La truie", "L'écureuil", "Amasser, mettre en lieu sûr", "L'étalon", "Se pavaner", "Le cygne", "Le cheval pur-sang", "La dinde / le dindon", "Les défenses (d'éléphant)", "Le pis", "La renarde", "Le loup (les loups)"]

    var body: some View {
        HStack {
            if !selectionTab {
                if translateSelection == 0 {
                    TestListPattern(solutionList: $enAnimalsList, displayedList: $frAnimalsList)
                } else {
                    TestListPattern(solutionList: $frAnimalsList, displayedList: $enAnimalsList)
                }
            } else {
                VocabularyListPattern(englishList: $enAnimalsList, frenchList: $frAnimalsList)
            }
        }
        .navigationBarTitle("Land Animals")
    }
}

struct LandAnimals_Previews: PreviewProvider {
    static var previews: some View {
        LandAnimals(translateSelection: .constant(0), selectionTab: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}

