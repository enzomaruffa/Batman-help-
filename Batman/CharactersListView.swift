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
    
    var body: some View {
        
        List(characters) { character in
            CharacterRowView(character: character)
        }
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
