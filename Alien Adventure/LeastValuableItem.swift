//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
//        var smallestValue: UDItem?
//        var cheapItem = 1000 // Can be optimized to find Max value in Array of UDItem
        var baseValueCollection = [Int]()
        
        if inventory.count == 0 {
            return nil
        } else {
            for item in inventory {
                if item.baseValue == 0 {
//                    cheapItem = item.baseValue
//                    smallestValue = item
                    baseValueCollection.append(item.baseValue)
//                    print(baseValueCollection)
//                    print("If 0, The baseValue of Item: \(item.baseValue) & \(item.name)") // Test
                } else if item.baseValue >= 0 {
//                    cheapItem = item.baseValue
//                    smallestValue = itemr
                    baseValueCollection.append(item.baseValue)
//                    print(baseValueCollection)
//                    print("If >0, The baseValue of Item: \(item.baseValue) & \(item.name)") // Test

                }
            }
        }
        
        let cheapItemInCollection = baseValueCollection.min() // Use the compilers method to find minimum
        
        for item in inventory { // Use a for loop to find the min() value in Array
            if item.baseValue == cheapItemInCollection {
                return item
            }
        }
        return nil
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
