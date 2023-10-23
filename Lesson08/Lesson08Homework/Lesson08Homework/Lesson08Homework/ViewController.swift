//
//  ViewController.swift
//  Lesson08Homework
//
//  Created by Alexandr Zuev on 23.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct MenuPosition {
            var name : String
            var price : Double
        }
        
        struct Menu {
            var snacks : [MenuPosition]
            var mainCourses : [MenuPosition]
            var drinks : [MenuPosition]
            var desserts : [MenuPosition]
        }
        
        func printPositionOfOrder(name: String, menu: Menu) {
            for value in menu.snacks {
                if value.name == name {
                    print(value.price)
                    return
                }
            }
            for value in menu.mainCourses {
                if value.name == name {
                    print(value.price)
                    return
                }
            }
            for value in menu.drinks {
                if value.name == name {
                    print(value.price)
                    return
                }
            }
            for value in menu.desserts {
                if value.name == name {
                    print(value.price)
                    return
                }
            }
            print("No such position in menu")
        }
        
        var menu = Menu(snacks: [MenuPosition(name: "Cheese omelette", price: 3.5)], mainCourses: [MenuPosition(name: "Vegetable pasta", price: 4.85)], drinks: [MenuPosition(name: "English tea", price: 0.90)], desserts: [MenuPosition(name: "Chocolate cake", price: 2.25)])
        menu.snacks.append(MenuPosition(name: "Cheeseburger", price: 3.2))
        menu.snacks.append(MenuPosition(name: "Burger", price: 2.9))
        menu.mainCourses.append(MenuPosition(name: "German sausage and chips", price: 6.5))
        menu.mainCourses.append(MenuPosition(name: "Grilled fish and potatoes", price: 6.25))
        menu.drinks.append(MenuPosition(name: "Mineral water", price: 1))
        menu.drinks.append(MenuPosition(name: "Fresh orange juice", price: 1.25))
        menu.desserts.append(MenuPosition(name: "Fruit salad and cream", price: 2.25))
        menu.desserts.append(MenuPosition(name: "Ice cream", price: 2))
        
        printPositionOfOrder(name: "latte", menu: menu)



    }


}

