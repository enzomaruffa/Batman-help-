//
//  CharacterSingleton.swift
//  Batman
//
//  Created by Enzo Maruffa Moreira on 05/02/20.
//  Copyright © 2020 Enzo Maruffa Moreira. All rights reserved.
//

import Foundation

class CharacterSingleton {
    static var shared = CharacterSingleton()
    var characters: [Character] = []
    
    private init() {
        
        // Create base characters
        var character = Character(id: 1, type: .hero, name: "Batman", assetName: "batman", occupation: "Businessman")
        characters.append(character)
        character = Character(id: 2, type: .hero, name: "Robin", assetName: "robin", occupation: "Businessman")
        characters.append(character)
        character = Character(id: 3, type: .villain, name: "Joker", assetName: "joker", occupation: "Mad man")
        characters.append(character)
        character = Character(id: 4, type: .villain, name: "Two Faces", assetName: "two-faces", occupation: "Deputy")
        characters.append(character)
        
        // Pull updated info from CloudKit
    }
    
}
