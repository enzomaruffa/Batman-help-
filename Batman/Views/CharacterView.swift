//
//  CharacterView.swift
//  Batman
//
//  Created by Enzo Maruffa Moreira on 05/02/20.
//  Copyright © 2020 Enzo Maruffa Moreira. All rights reserved.
//

import SwiftUI

struct CharacterView: View {
    
    var character: Character
    
    var body: some View {
        Text(character.name)
    }
}

struct CharacterView_Previews: PreviewProvider {

    static var charater = CharacterSingleton.shared.characters.first!

    static var previews: some View {
        CharacterView(character: charater)
    }
}
