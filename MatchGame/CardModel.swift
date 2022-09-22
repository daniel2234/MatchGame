//
//  CardModel.swift
//  MatchGame
//
//  Created by daniel on 2022-09-21.
//

import Foundation


class CardModel {
    
    func getCards() -> [Card] {
        
        //declare an empty array
        var generatedCards = [Card]()
        
        //Randomly generate 8 pairs of cards
        for _ in 1...8 {
            
            //Generate a random number
            let randomNumber = Int.random(in: 1...13)
//            let randomNumber = Int.random(in: 1...13)

            //declare previous random number, and implement emthod to prevent the same random number
//            while randomNumber == secondRandomNumber {
//                randomNumber = Int.random(in: 1...13)
//            }
            
            // Create the two objects
            let cardOne = Card()
            let cardTwo = Card()
            
            //set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            //add them to the array
            generatedCards += [cardOne, cardTwo]
        }
        
        
        //Randomize the card in the array
        generatedCards.shuffle()
        
        //Return the array
        return generatedCards
        
    }
}
