//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        let planetOfOrigin = planet
        var itemsForAlien = [UDItem]()
        
        // Use historicalData to find PlanetOfOrigin: Cuni and store in a new array
        for item in inventory {
            if let planetName = item.historicalData["PlanetOfOrigin"] as? String, planetName == "\(planetOfOrigin)" {
                itemsForAlien.append(item)
            }
        }
        
        // Use historicalData to find the oldest CarbonAge from Array
        // Return the oldest item to Alien
        var itemMaxCarbonAge = 0
        for item in itemsForAlien {
            if let itemCarbonAge = item.historicalData["CarbonAge"] as? Int {
                if itemCarbonAge >= itemMaxCarbonAge {
                    itemMaxCarbonAge = itemCarbonAge
                    itemsForAlien.remove(at: 0)
                    print("The maximum age is \(itemMaxCarbonAge)") // Test age is iterating in loop
                } else {
                    return oldestItemForAlien
                }
            }
        }
        
        print("Number of itemsForAlien in \(itemsForAlien.count)") // Test number of items
        
        
        return nil
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
