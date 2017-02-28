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
        var itemsForAlien: UDItem?
        var itemMaxCarbonAge = 0

        // Use historicalData to find PlanetOfOrigin: Cuni and store in a new array
        for item in inventory {
            if let planetName = item.historicalData["PlanetOfOrigin"] as? String, planetName == "\(planetOfOrigin)" {
                print("The planetName is \(planetName)")
                if let itemCarbonAge = item.historicalData["CarbonAge"] as? Int, itemCarbonAge >= itemMaxCarbonAge {
                    print("The carbonAge is \(itemCarbonAge)")
                    itemMaxCarbonAge = itemCarbonAge
                }
            }
            itemsForAlien = item
            print("The item handed over to Alien: \(itemsForAlien)")
            return itemsForAlien
        }
        return nil
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
