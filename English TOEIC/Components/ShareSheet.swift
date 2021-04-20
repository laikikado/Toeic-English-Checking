//
//  ShareSheet.swift
//  English TOEIC
//
//  Created by Paul Colombier on 20/04/2021.
//

import SwiftUI

struct ShareSheet: View {
    var body: some View {
        Button(action: actionSheet) {
            Text("Share App")
        }
    }

    struct ShareSheet_Previews: PreviewProvider {
        static var previews: some View {
            ShareSheet()
        }
    }

    func actionSheet() {
        let data = "Check out Voc'in on the App Store! https://apps.apple.com/app/id375380948"
        let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}
