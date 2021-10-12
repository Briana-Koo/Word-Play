//
//  ContentView.swift
//  Word Play
//
//  Created by Student on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter to requested words below")
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                    CustomTextField(placeholder: "verb", variable: $words.verb1)
                    CustomTextField(placeholder: "verb (pt)", variable: $words.verbPastTense0)
                }
                HStack {
                    CustomTextField(placeholder: "verb - ing", variable: $words.verbEndingInIng0)
                    CustomTextField(placeholder: "adverb", variable: $words.adverb0)
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                }
                HStack {
                  CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                    CustomTextField(placeholder: "plural noun", variable: $words.pluralNoun0)
                }
                HStack {
                    CustomTextField(placeholder: "plural noun", variable: $words.pluralNoun1)
                    CustomTextField(placeholder: "plural noun", variable: $words.pluralNoun2)
                    CustomTextField(placeholder: "plural noun", variable: $words.pluralNoun3)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                    CustomTextField(placeholder: "interjection", variable: $words.interjection0)
                    CustomTextField(placeholder: "colour", variable: $words.colour)
                }
                NavigationLink("Next", destination: StoryView(words: words))
                Spacer()
            }
            .navigationTitle("Word Play")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var verb0 = "" //used
    var noun0 = "" //used
    var adverb0 = "" //used
    var verbPastTense0 = "" //used
    var pluralNoun0 = "" //used
    var pluralNoun3 = ""
    var adjective0 = "" //used
    var pluralNoun1 = "" //used
    var verbEndingInIng0 = "" //used
    var colour = "" //used
    var pluralNoun2 = "" //used
    var noun1 = "" //used
    var noun2 = "" //used
    var interjection0 = "" //used
    var adjective1 = "" //used
    var verb1 = "" //used
    var adjective2 = "" //used
    var adjective3 = "" //used
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
