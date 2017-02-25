//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == "" {
            // Validate if three parameters are empty strings
            return true
            
        } else {
            if shuffle.characters.count != s1.characters.count + s2.characters.count {
                // Validate shuffle string characters with orignal combined strings
                return false
                
            } else {
                // Validate the shuffle string
                // abcd || acdb || cabd || cdab Are valid combinations
                
                let combo1 = s1 + s2 //abcd
                let combo2 = s2 + s1 //cdab
                let combo3 = String(s1[s1.startIndex]) + String(s2[s2.startIndex..<s2.endIndex]) + String(s1[s1.index(after: s1.startIndex)]) //acdb
                let combo4 = String(s2[s2.startIndex]) + String(s1[s1.startIndex..<s1.endIndex]) + String(s2[s2.index(after: s2.startIndex)]) //cabd
                let combo5 = String(s1[s1.startIndex]) + String(s2[s2.startIndex]) + String(s1[s1.index(after: s1.startIndex)]) + String(s2[s2.index(after: s2.startIndex)]) // acbd
                let combo6 = String(s2[s2.startIndex]) + String(s1[s1.startIndex]) + String(s2[s2.index(after: s1.startIndex)]) + String(s1[s1.index(after: s1.startIndex)]) // cadb
                
                if shuffle == combo1 || shuffle == combo2 || shuffle == combo3 || shuffle == combo4 || shuffle == combo5 || shuffle == combo6 {
                    return true
                    
                } else {
                    return false
                    
                }
            }
        }
    }
}
