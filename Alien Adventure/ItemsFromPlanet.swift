//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        // Initialize an empty array
        var itemsFromPlanetGlinda = [UDItem]()

        for item in inventory {
            if let name = item.historicalData["PlanetOfOrigin"] as? String {
                if name.contains(planet) {
                    itemsFromPlanetGlinda.append(item)
                }
                
            }
        }
        
        return itemsFromPlanetGlinda
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"

// What were my diamonds?
// 1. The Alien when referring Glinda is the planet string in the above function.
// 2. I didn't check the intructions to change skip = 0.
// 3. I gave up fast and search for answers in the forum. Took me too long to solve.
// 

//        // Iterate inventory to find rare items and append to empty array rareItems
//        for item in inventory {
//            if item.rarity == UDItemRarity(rawValue: 2) {
//                rareItems.append(item)
//            }
////            print(item.historicalData)
////            print(item.rarity)
//
//        }
//        print(rareItems)

// Iterate rareItems to compare the lowest values
