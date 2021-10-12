//
//  StoryView.swift
//  Word Play
//
//  Created by Student on 10/5/21.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
            .multilineTextAlignment(.center)
        }
    func writeStory() -> String {
        return "O say can you \(words.verb0) by the dawns early \(words.noun0). " + "What so \(words.adverb0) we \(words.verbPastTense0) at the twilight's " + "last gleaming. Whose broad \(words.pluralNoun0) and " + "bright \(words.pluralNoun1) through the \(words.adjective0) fight. Over " + "the \(words.pluralNoun2) we watched, were so gallantly " + "\(words.verbEndingInIng0)? And the rockets' \(words.colour) glare, the " + "\(words.pluralNoun3) bursting in \(words.noun0). Gave proof through the " + "night that our \(words.noun1) was still there; \(words.interjection0) does " + "that \(words.adjective1) banner yet \(words.verb1). Over the " + "land of the \(words.adjective2) and the home of the \(words.adjective3)."
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words : Words())
    }
}
