//
//  DatabaseAccess.swift
//  Batman
//
//  Created by Enzo Maruffa Moreira on 06/02/20.
//  Copyright © 2020 Enzo Maruffa Moreira. All rights reserved.
//

import Foundation

protocol DatabaseAccess {
    func getAllCharacters() -> [Character]
    func getAllScenes() -> [SceneLocation]
    func addScene(scene: SceneLocation)
}
