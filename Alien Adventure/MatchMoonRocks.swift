//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        // var itemNamesMoonRocks: [String] = []
        var itemNamesMoonRocks: [UDItem] = []
        for moonrocks in inventory {
            if moonrocks.name.contains("MoonRock") {
                itemNamesMoonRocks.append(moonrocks)
                // itemNamesMoonRocks.append([moonrocks.name.contains("MoonRock")])
                // itemNamesMoonRocks = [moonrocks.name]
            }
        }
        // print(itemNamesMoonRocks)
        return itemNamesMoonRocks // [UDItem]()
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
