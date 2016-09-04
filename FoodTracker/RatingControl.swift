//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Pavel Nikitinskiy on 8/31/16.
//  Copyright © 2016 pavel. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Properties
    
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    
    // MARK: Initialization
   
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        
        
        for _ in 0..<starCount {
            let button = UIButton()
    
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            button.adjustsImageWhenDisabled = false
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown) //action for button, attached ratingButtonTapped for action
            ratingButtons += [button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x:0, y:0, width: buttonSize, height:buttonSize)
         // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
            button.frame = buttonFrame
        }
         updateButtonSelectionStates()
    }
    
    override func intrinsicContentSize() -> CGSize {

        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        print(width)
        return CGSize(width: width, height: buttonSize)
    }
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        rating = ratingButtons.indexOf(button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for(index, button) in ratingButtons.enumerate() {
            //If the index of a button is less than the rating, that button should be selected.
            button.selected = index < rating
        }
    }
    
}
