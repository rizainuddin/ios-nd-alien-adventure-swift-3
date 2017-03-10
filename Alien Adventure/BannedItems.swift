//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let itemListArray = NSArray(contentsOf: dataFileURL) as! [[String:Any]]
        
//        print("ItemList.plist is accessible: \(dataFileURL)")
//        print("Load ItemList in NSArray: \(itemListArray)")
//        ["ItemID": 7, "BaseValue": 240, "ItemType": 1, "Rarity": 1, "Name": GammaShard, "HistoricalData": { CarbonAge = 4000; PlanetOfOrigin = Cunia; }]
        
        struct BannedItems {
            let name: String
            let itemID: Int
            var historicalData: [String:AnyObject]
        }
        
        var bannedItemsStructs = [BannedItems]()
        
        for item in itemListArray {
            
            if let name = item["Name"] as? String, let itemID = item["ItemID"] as? Int, let historicalData = item["HistoricalData"] as? [String:AnyObject], name.contains("Laser") == true {
//                print("Name contains laser is: \(name.contains("Laser")) and name is \(name)")
                
                bannedItemsStructs.append(BannedItems(name: name, itemID: itemID, historicalData: historicalData))
                
            }
            
        }
        
//        print(bannedItemsStructs)
        
        var returnItem = [Int]()
        let maximumCarbonAge = 30
        
        for item in bannedItemsStructs {
            if let carbonAge = item.historicalData["CarbonAge"] as? Int, carbonAge <= maximumCarbonAge {
                returnItem.append(item.itemID)
            }
        }
        
        return returnItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
