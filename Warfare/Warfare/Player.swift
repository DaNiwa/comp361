//
//  Player.swift
//  Warfare
//
//  Created by Justin Domingue on 2015-02-07.
//  Copyright (c) 2015 Justin Domingue. All rights reserved.
//

import Foundation

class Player {
    var villages = [Village]()
    
    /// Removes village v from the list of villages
    /// and removes the unit or structures from the
    /// region controlled by that village
    func removeVillages(to_delete: Village) {
        to_delete.clearRegion()
        
        // Find object in array
        for (i, village) in enumerate(self.villages) {
            if to_delete.position == village.position {
                self.villages.removeAtIndex(i)
                break
            }
        }
    }
}