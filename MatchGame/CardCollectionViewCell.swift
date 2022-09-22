//
//  CardCollectionViewCell.swift
//  MatchGame
//
//  Created by daniel on 2022-09-22.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    

    
    var card: Card?
    
    func configureCard(card: Card) {
        
        
        //keep track of the card the cell represents
        self.card = card
        
        //set the front image view to the image that represent the card
        frontImageView.image = UIImage(named: card.imageName)
        
        //Reset the state of the cell by checking the flipped status of the card and then showing the front or the back imageview accordingly
        if card.isFlipped == true {
            //show the front image view
            flipUp()
        } else {
            flipDown()
        }
        
    }
    
    func flipUp() {
        UIView.transition(from: backImageView, to: frontImageView, duration: 0.0, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        card?.isFlipped = true
    }
    
    func flipDown() {
        UIView.transition(from: frontImageView, to: backImageView, duration: 0.0, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        
        card?.isFlipped = false
    }
}
