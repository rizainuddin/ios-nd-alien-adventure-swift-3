//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
//        print("Total items in inventory: \(inventory.count)")
        
        var rarityItemsForAlien: [UDItemRarity:Int]
        rarityItemsForAlien = [UDItemRarity.common : 0, UDItemRarity.uncommon : 0, UDItemRarity.rare : 0, UDItemRarity.legendary : 0]
        
        var countCommon = 0
        var countUncommon = 0
        var countRare = 0
        var countLegendary = 0
        
//        print("Before loop: \(rarityItemsForAlien)")
        
        for item in inventory {
            if item.rarity == UDItemRarity(rawValue: 0) {
//                print(item.rarity)
                countCommon += 1
                rarityItemsForAlien[UDItemRarity.common] = countCommon
            }
            if item.rarity == UDItemRarity(rawValue: 1) {
//                print(item.rarity)
                countUncommon += 1
                rarityItemsForAlien[UDItemRarity.uncommon] = countUncommon
            }
            if item.rarity == UDItemRarity(rawValue: 2) {
//                print(item.rarity)
                countRare += 1
                rarityItemsForAlien[UDItemRarity.rare] = countRare
            }
            if item.rarity == UDItemRarity(rawValue: 3) {
//                print(item.rarity)
                countLegendary += 1
                rarityItemsForAlien[UDItemRarity.legendary] = countLegendary
            }
        }
        
//        print("After loop: \(rarityItemsForAlien)")
        
        return rarityItemsForAlien
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
