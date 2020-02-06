//
//  CharactersListView.swift
//  Batman
//
//  Created by Enzo Maruffa Moreira on 05/02/20.
//  Copyright © 2020 Enzo Maruffa Moreira. All rights reserved.
//

import SwiftUI

struct CharactersListView: View {
    
    @State var characters: [Character] = CharacterSingleton.shared.characters
    @State var currentFilter: Int = 1
    
    @State private var possibleStates: [CharacterType?] = [CharacterType.hero, nil, .villain]
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.center) {
            Picker(selection: $currentFilter, label: Text("Type")) {
                ForEach(0 ..< possibleStates.count) {
                    Text(self.possibleStates[$0]?.rawValue ?? "All")
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
            List(characters.filter( { possibleStates[currentFilter] == nil ? true : ($0.type == possibleStates[currentFilter]) } )) { character in
                CharacterRowView(character: character)
            }
        }
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
