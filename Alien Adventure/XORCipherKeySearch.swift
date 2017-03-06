//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        
        // NOTE: This code doesn't exactly mimic what is in the Lesson. We've
        // added some print statements so that there are no warnings for 
        // unused variables 😀.
        
        print("The encrypted message is \(encryptedString)") // yhmoexu
        
        var key: UInt8
        key = 0 //If encryptedString is 0 return 0
        
        for x in UInt8.min..<UInt8.max { //Loop to check possible values of UInt8
            
            print(x)
            
            var decrypted: [UInt8]
            decrypted = [UInt8]() //Empty array to store each decrypted value
            
            for character in encryptedString { //Loop each UInt8 encryptedString
                // ADD CODE: perform decryption
                
                print("Character in \(encryptedString) : \(character)")
                
                let performDecryption = character ^ x
                decrypted.append(performDecryption)
                
                print("Characters decrypted: \(performDecryption)")
            }
            
            print("Decrypted values: \(decrypted)")
            
            if let decryptedString = String(bytes: decrypted,
                encoding: String.Encoding.utf8), decryptedString == "udacity" {
                    // ADD CODE: found match, now what?
                key = x
            }
            
            print("Key values: \(key)")
        }
        
        return key
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
