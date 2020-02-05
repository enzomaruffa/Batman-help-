//
//  CharacterRowView.swift
//  Batman
//
//  Created by Enzo Maruffa Moreira on 05/02/20.
//  Copyright © 2020 Enzo Maruffa Moreira. All rights reserved.
//

import SwiftUI

struct CharacterRowView: View {
    
    var character: Character
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: CharacterView(character: character)) {
                HStack {
                    Image(character.assetName)
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, idealWidth: nil, maxWidth: 100, minHeight: 100, idealHeight: nil, maxHeight: 100, alignment: .center)
                        .padding()
                        
                    Spacer()
                    Text(character.name)
                        .padding()
                }
            }
        }
    }
}

