//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Pavel Nikitinskiy on 9/8/16.
//  Copyright © 2016 pavel. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    // MARK: Properties
    
    var meals = [Meal]()
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleMeals()
    }

    func loadSampleMeals() {
        let photo1 = UIImage(named: "littleImg")
        let meal1 = Meal(name: "Caprese Salad", photo: photo1, rating: 4 )!
        let photo2 = UIImage(named: "littleImg1")
        let meal2 = Meal( name: "Chicken and Potatos", photo: photo2, rating: 5)!
        meals += [meal1, meal2]
    }
}
