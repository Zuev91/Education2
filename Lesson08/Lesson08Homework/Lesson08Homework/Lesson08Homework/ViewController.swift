//
//  ViewController.swift
//  Lesson08Homework
//
//  Created by Alexandr Zuev on 23.10.23.
//

import UIKit
//Проектирование меню:
//Надо сделать класс/cтруктуру Меню, в свойствах которого будет несколько категорий (закуски, основное меню, напитки, десерты) содержащие абстрактный продукт. У каждого конкретного продукта будет название и стоимость (Например: Название: кофе латте, Стоимость: 10руб)
//Сделаем функцию(надеюсь вы помните чем отличается метод от функции) которая при получении абстрактного продукта выводит его название и стоимость в консоль

class Position {
    var type : String = ""
    
    func printType() {
        print(type)
    }
}

class MenuPosition: Position {
    var name : String = ""
    var price : Double = 0
    
    override func printType() {
        print("\(name) \(price)")
    }
}

class Menu {
    var snacks : [Position] = []
    var mainCourses : [Position] = []
    var drinks : [Position] = []
    var desserts : [Position] = []
}

func printPosition(_ position: Position) {
    position.printType()
}

//func printPositionOfOrder(name: Position, menu: Menu) {
//    for value in menu.snacks {
//        if value.type == name.type {
//            print("\(value.name) \(value.price)")
//                    }
//            }
//    for value in menu.mainCourses {
//        if value.type == name.type {
//            print("\(value.name) \(value.price)")
//                    }
//            }
//    for value in menu.drinks {
//        if value.type == name.type {
//            print("\(value.name) \(value.price)")
//                    }
//            }
//    for value in menu.desserts {
//        if value.type == name.type {
//            print("\(value.name) \(value.price)")
//                    }
//            }
//}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var menu = Menu()
        
        let cheeseOmelette = MenuPosition()
        cheeseOmelette.type = "Snacks"
        cheeseOmelette.name = "Cheese omelette"
        cheeseOmelette.price = 3.5
        menu.snacks.append(cheeseOmelette)
        
        let vegetablePasta = MenuPosition()
        vegetablePasta.type = "Main Courses"
        vegetablePasta.name = "Vegetable pasta"
        vegetablePasta.price = 4.85
        menu.mainCourses.append(vegetablePasta)
        
        let englishTea = MenuPosition()
        englishTea.type = "Drinks"
        englishTea.name = "English tea"
        englishTea.price = 0.90
        menu.drinks.append(vegetablePasta)
        
        let chocolateCake = MenuPosition()
        chocolateCake.type = "Desserts"
        chocolateCake.name = "Chocolate cake"
        chocolateCake.price = 0.90
        menu.desserts.append(chocolateCake)
        
        let cheeseburger = MenuPosition()
        cheeseburger.type = "Snacks"
        cheeseburger.name = "Cheeseburger"
        cheeseburger.price = 3.2
        menu.snacks.append(cheeseburger)
        
        let burger = MenuPosition()
        burger.type = "Snacks"
        burger.name = "Burger"
        burger.price = 2.9
        menu.snacks.append(burger)
        
        let germanSausageAndChips = MenuPosition()
        germanSausageAndChips.type = "Main Courses"
        germanSausageAndChips.name = "German sausage and chips"
        germanSausageAndChips.price = 6.5
        menu.mainCourses.append(germanSausageAndChips)
        
        let grilledFishAndPotatoes = MenuPosition()
        grilledFishAndPotatoes.type = "Main Courses"
        grilledFishAndPotatoes.name = "Grilled fish and potatoes"
        grilledFishAndPotatoes.price = 6.25
        menu.mainCourses.append(grilledFishAndPotatoes)
        
        let mineralWater = MenuPosition()
        mineralWater.type = "Drinks"
        mineralWater.name = "Mineral water"
        mineralWater.price = 1
        menu.drinks.append(mineralWater)
        
        let freshOrangeJuice = MenuPosition()
        freshOrangeJuice.type = "Drinks"
        freshOrangeJuice.name = "Fresh orange juice"
        freshOrangeJuice.price = 1.25
        menu.drinks.append(freshOrangeJuice)
        
        let fruitSaladAndCream = MenuPosition()
        fruitSaladAndCream.type = "Desserts"
        fruitSaladAndCream.name = "Fruit salad and cream"
        fruitSaladAndCream.price = 2.25
        menu.desserts.append(fruitSaladAndCream)
        
        let iceCream = MenuPosition()
        iceCream.type = "Desserts"
        iceCream.name = "Ice cream"
        iceCream.price = 2
        menu.desserts.append(iceCream)

        let orderPosition = Position()
        orderPosition.type = "Desserts"
//        printPositionOfOrder(name: orderPosition, menu: menu)
        printPosition(iceCream)
    }


}

