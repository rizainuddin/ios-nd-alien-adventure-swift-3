//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var charA = 0, charB = 0, charC = 0, charD = 0, charE = 0, charF = 0, charG = 0, charH = 0, charI = 0, charJ = 0, charK = 0, charL = 0, charM = 0, charN = 0, charO = 0, charP = 0, charQ = 0, charR = 0, charS = 0, charT = 0, charU = 0, charV = 0, charW = 0, charX = 0, charY = 0, charZ = 0
        var mostCommonCharDict = [Character:Int]()
        for itemName in inventory {
            print(itemName.name.lowercased())
            let itemNameLowercase = itemName.name.lowercased()
            for character in itemNameLowercase.characters {
//                print(character)
                switch character {
                case "a":
                    charA += 1
                    mostCommonCharDict["a"] = charA
                    print("Total A: \(charA)")
                case "b":
                    charB += 1
                    mostCommonCharDict["b"] = charB
                    print("Total B: \(charB)")
                case "c":
                    charC += 1
                    mostCommonCharDict["c"] = charC
                    print("Total C: \(charC)")
                case "d":
                    charD += 1
                    mostCommonCharDict["d"] = charD
                    print("Total D: \(charD)")
                case "e":
                    charE += 1
                    mostCommonCharDict["e"] = charE
                    print("Total E: \(charE)")
                case "f":
                    charF += 1
                    mostCommonCharDict["f"] = charF
                    print("Total F: \(charF)")
                case "g":
                    charG += 1
                    mostCommonCharDict["g"] = charG
                    print("Total G: \(charG)")
                case "h":
                    charH += 1
                    mostCommonCharDict["h"] = charH
                    print("Total H: \(charH)")
                case "i":
                    charI += 1
                    mostCommonCharDict["i"] = charI
                    print("Total I: \(charI)")
                case "j":
                    charJ += 1
                    mostCommonCharDict["j"] = charJ
                    print("Total J: \(charJ)")
                case "k":
                    charK += 1
                    mostCommonCharDict["k"] = charK
                    print("Total K: \(charK)")
                case "l":
                    charL += 1
                    mostCommonCharDict["l"] = charL
                    print("Total L: \(charL)")
                case "m":
                    charM += 1
                    mostCommonCharDict["m"] = charM
                    print("Total M: \(charM)")
                case "n":
                    charN += 1
                    mostCommonCharDict["n"] = charN
                    print("Total N: \(charN)")
                case "o":
                    charO += 1
                    mostCommonCharDict["o"] = charO
                    print("Total O: \(charO)")
                case "p":
                    charP += 1
                    mostCommonCharDict["p"] = charP
                    print("Total P: \(charP)")
                case "q":
                    charQ += 1
                    mostCommonCharDict["q"] = charQ
                    print("Total Q: \(charQ)")
                case "r":
                    charR += 1
                    mostCommonCharDict["r"] = charR
                    print("Total R: \(charR)")
                case "s":
                    charS += 1
                    mostCommonCharDict["s"] = charS
                    print("Total S: \(charS)")
                case "t":
                    charT += 1
                    mostCommonCharDict["t"] = charT
                    print("Total T: \(charT)")
                case "u":
                    charU += 1
                    mostCommonCharDict["u"] = charU
                    print("Total U: \(charU)")
                case "v":
                    charV += 1
                    mostCommonCharDict["v"] = charV
                    print("Total V: \(charV)")
                case "w":
                    charW += 1
                    mostCommonCharDict["w"] = charW
                    print("Total W: \(charW)")
                case "x":
                    charX += 1
                    mostCommonCharDict["x"] = charX
                    print("Total X: \(charX)")
                case "y":
                    charY += 1
                    mostCommonCharDict["y"] = charY
                    print("Total Y: \(charY)")
                case "z":
                    charZ += 1
                    mostCommonCharDict["z"] = charZ
                    print("Total Z: \(charZ)")
                default:
                    break
                }
            }
        }
        print(mostCommonCharDict.sorted(by: <))
        
        var highestCountChar: Character? = nil
        var highestCount = 0
        
        for (charAbc, charCount) in mostCommonCharDict {
            if charCount > highestCount {
                highestCount = charCount
                highestCountChar = charAbc
            }
        }
        print("The character \(highestCountChar) appeared: \(highestCount)")
        
        return highestCountChar
    }
}

// Need to find most common character from a-z
// Convert all the strings to be lowercased
// Initialized an empty variable from a-z
// Example return -> let commonChar: Character = "b"
// Store in a dictionary [Character:Int]
// Example ["a": 1, "b": 2, "c": 3, ...] then call the
// character with the most count
// Use switch statement to count characters
