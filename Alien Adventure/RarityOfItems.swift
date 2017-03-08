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
            switch item.rarity {
            case .common:
                countCommon += 1
                rarityItemsForAlien[UDItemRarity.common] = countCommon
            case .uncommon:
                countUncommon += 1
                rarityItemsForAlien[UDItemRarity.uncommon] = countUncommon
            case .rare:
                countRare += 1
                rarityItemsForAlien[UDItemRarity.rare] = countRare
            case .legendary:
                countLegendary += 1
                rarityItemsForAlien[UDItemRarity.legendary] = countLegendary
            default:
                break
            }
        }
        
        //        print("After loop: \(rarityItemsForAlien)")
        
        return rarityItemsForAlien
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
