//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var reverseLongestNameForAlien = ""
        for n in inventory {
            if n.name.characters.count > reverseLongestNameForAlien.characters.count || reverseLongestNameForAlien == "" {
                reverseLongestNameForAlien = n.name
            }
        }
        let reverseName = reverseLongestNameForAlien.characters.reversed()
        return String(reverseName)
    
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"

//        Assume that I have found the longest word in this Array
//        let sortLongestName = inventory.sorted(by: <)
//        let longestName = sortLongestName[0]

//        if let longestName.name = longestName.name {
//            var reverseLongName = longestName.name.characters.reversed()
//        } else {
//           return ""
//        }
