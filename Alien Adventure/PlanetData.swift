//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileJsonURL = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawDataFileJsonURL = try! Data(contentsOf: dataFileJsonURL) // Creates a variable to hold the JSON in a “raw” format.
        
        var planetDictionariesFromJSON: [[String:Any]]! // Creates an implicitly unwrapped [[String:Any]] optional.
        do {
            planetDictionariesFromJSON = try! JSONSerialization.jsonObject(with: rawDataFileJsonURL, options: JSONSerialization.ReadingOptions()) as? [[String:Any]] //this code is responsible for converting the raw JSON into a usable [[String:Any]].
        }
        
//        print("JSON data import: \(planetDictionariesFromJSON)")
        
        var totalPointsForPlanetsArray = [String:Int]() //Initialize empty dictionary
        
        let pointsForCommon: Int = 1
        let pointsForUncommon: Int = 2
        let pointsForRare: Int = 3
        let pointsForLegendary: Int = 4
        
        for planets in planetDictionariesFromJSON {
            if let name = planets["Name"] as? String, let commonItems = planets["CommonItemsDetected"] as? Int, let uncommonItems = planets["UncommonItemsDetected"] as? Int, let rareItems = planets["RareItemsDetected"] as? Int, let legendaryItems = planets["LegendaryItemsDetected"] as? Int {
//                print("Planet names: \(name)")
                switch name {
                case "Preshan":
                    let pointsForPreshan = (pointsForCommon * commonItems) + (pointsForUncommon * uncommonItems) + (pointsForRare * rareItems) + (pointsForLegendary * legendaryItems)
                    totalPointsForPlanetsArray["Preshan"] = pointsForPreshan
//                    print(pointsForPreshan)
                case "Strov":
                    let pointsForStrov = (pointsForCommon * commonItems) + (pointsForUncommon * uncommonItems) + (pointsForRare * rareItems) + (pointsForLegendary * legendaryItems)
                    totalPointsForPlanetsArray["Strov"] = pointsForStrov
//                    print(pointsForStrov)
                case "Vawhuna":
                    let pointsForVawhuna = (pointsForCommon * commonItems) + (pointsForUncommon * uncommonItems) + (pointsForRare * rareItems) + (pointsForLegendary * legendaryItems)
                    totalPointsForPlanetsArray["Vawhuna"] = pointsForVawhuna
//                    print(pointsForVawhuna)
                case "Ziothea":
                    let pointsForZiothea = (pointsForCommon * commonItems) + (pointsForUncommon * uncommonItems) + (pointsForRare * rareItems) + (pointsForLegendary * legendaryItems)
                    totalPointsForPlanetsArray["Ziothea"] = pointsForZiothea
//                    print(pointsForZiothea)
                case "Skuna":
                    let pointsForSkuna = (pointsForCommon * commonItems) + (pointsForUncommon * uncommonItems) + (pointsForRare * rareItems) + (pointsForLegendary * legendaryItems)
                    totalPointsForPlanetsArray["Skuna"] = pointsForSkuna
//                    print(pointsForSkuna)
                case "Greon":
                    let pointsForGreon = (pointsForCommon * commonItems) + (pointsForUncommon * uncommonItems) + (pointsForRare * rareItems) + (pointsForLegendary * legendaryItems)
                    totalPointsForPlanetsArray["Greon"] = pointsForGreon
//                    print(pointsForGreon)
                default:
                    break
                }
            }
        }
        
//        print(totalPointsForPlanetsArray)
        
        var highestPointsForPlanet = 0
        var highestPointsPlanetName = ""
        
        for (planetName, planetPoints) in totalPointsForPlanetsArray {
//            print("Planet points: \(planetName) has \(planetPoints)")
            if planetPoints > highestPointsForPlanet {
                highestPointsForPlanet = planetPoints
                highestPointsPlanetName = planetName
            }
        }
        
//        print("The planet \(highestPointsPlanetName) has the highest point: \(highestPointsForPlanet)")
        
        return highestPointsPlanetName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
