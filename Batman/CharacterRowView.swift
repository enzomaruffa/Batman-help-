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
            NavigationLink(destination: CharacterView(character: self.character)) {
                ZStack {
                    Rectangle()
                        .padding()
                        .frame(minWidth: nil, idealWidth: nil, maxWidth: nil, minHeight: nil, idealHeight: nil, maxHeight: 140, alignment: .center)
                        .shadow(radius: 3)
                        .foregroundColor(character.type == .hero ? Color.blue : Color.red)
                        .opacity(0.8)
                        .cornerRadius(15)
                    HStack {
                        Image(self.character.assetName)
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 50, idealWidth: nil, maxWidth: 100, minHeight: 80, idealHeight: nil, maxHeight: 100, alignment: .center)
                            .padding()
                        
                        Spacer()
                        Text(self.character.name)
                            .padding()
                            .font(.title)
                            .foregroundColor(Color(.white))
                    }.padding()
                }
            }
        }
    }
    
}

struct CharacterRowView_Previews: PreviewProvider {
    
    static var charater = CharacterSingleton.shared.characters.first!
    
    static var previews: some View {
        CharacterRowView(character: charater)
    }
}

