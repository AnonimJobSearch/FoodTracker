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
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MealTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MealTableViewCell
        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating
        return cell
    }
    
}