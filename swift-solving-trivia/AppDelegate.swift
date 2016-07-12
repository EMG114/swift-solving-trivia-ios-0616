//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    //What is the only state whose capital contains none of the characters as the state name?
    
    var statesAndCapitals : [String:String] = [
        "Alabama" : "Montgomery",
        "Alaska" : "Juneau",
        "Arizona" : "Phoenix",
        "Arkansas" : "Little Rock",
        "California" : "Sacramento",
        "Colorado" : "Denver",
        "Connecticut" : "Hartford",
        "Delaware" : "Dover",
        "Florida" : "Tallahassee",
        "Georgia" : "Atlanta",
        "Hawaii" : "Honolulu",
        "Idaho" : "Boise",
        "Illinois" : "Springfield",
        "Indiana" : "Indianapolis",
        "Iowa" : "Des Moines",
        "Kansas" : "Topeka",
        "Kentucky" : "Frankfort",
        "Louisiana" : "Baton Rouge",
        "Maine" : "Augusta",
        "Maryland" : "Annapolis",
        "Massachusetts" : "Boston",
        "Michigan" : "Lansing",
        "Minnesota" : "Saint Paul",
        "Mississippi" : "Jackson",
        "Missouri" : "Jefferson City",
        "Montana" : "Helena",
        "Nebraska" : "Lincoln",
        "Nevada" : "Carson City",
        "New Hampshire" : "Concord",
        "New Jersey" : "Trenton",
        "New Mexico" : "Santa Fe",
        "New York" : "Albany",
        "North Carolina" : "Raleigh",
        "North Dakota" : "Bismarck",
        "Ohio" : "Columbus",
        "Oklahoma" : "Oklahoma City",
        "Oregon" : "Salem",
        "Pennsylvania" : "Harrisburg",
        "Rhode Island" : "Providence",
        "South Carolina" : "Columbia",
        "South Dakota" : "Pierre",
        "Tennessee" : "Nashville",
        "Texas" : "Austin",
        "Utah" : "Salt Lake City",
        "Vermont" : "Montpelier",
        "Virginia" : "Richmond",
        "Washington" : "Olympia",
        "West Virginia" : "Charleston",
        "Wisconsin" : "Madison",
        "Wyoming" : "Cheyenne",
        ]
    
    // print(statesAndCapitals)
    
    
    func solveTrivia(statesAndCapitals: [String:String]) -> String {
        
        var theAnswer = ""
        
        for (state, capital) in statesAndCapitals {
            let stateCharacters = Array(state.lowercaseString.characters)
            let capitalCharacters = Array(capital.lowercaseString.characters)
            
            var sharingCharacter = false
            
            for letter in capitalCharacters {
                if letter != " " && stateCharacters.contains(letter) {
                    sharingCharacter = true
                    break
                }
            }
            
            if sharingCharacter == false {
               
                theAnswer = state
            }
            
        }
        
        return theAnswer
    }
    
   
}




