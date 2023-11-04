//
//  ViewController.swift
//  Lesson09Homework
//
//  Created by Alexandr Zuev on 1.11.23.
//
//    Второй Этап:
//    Проектируем Ресторан-синглтон. У ресторана есть меню, в меню есть как минимум 5 позиций. Посчитать выручку за день ресторана.
//    Добавим к этому графический интерфейс. 5 кнопок, на каждую позицию. На начало и конец смены отдельные кнопки. На начало смены выручка равна 0, на конец смены все что заказали показать в консоль.

import UIKit

@objc class Position: NSObject {
    var type : String = ""
    var name : String = ""
    var price : Double = 0
    
    func printType() {
        print(type)
    }
}

@objc class MenuPosition: Position {
    override func printType() {
        print("\(name) \(price)")
    }
}

class Menu {
    
    var snacks : [Position] = []
    var mainCourses : [Position] = []
    var drinks : [Position] = []
    var desserts : [Position] = []
    
    init() {
        let cheeseOmelette = MenuPosition()
        cheeseOmelette.type = "Snacks"
        cheeseOmelette.name = "Cheese omelette"
        cheeseOmelette.price = 3.5
        snacks.append(cheeseOmelette)
        
        let vegetablePasta = MenuPosition()
        vegetablePasta.type = "Main Courses"
        vegetablePasta.name = "Vegetable pasta"
        vegetablePasta.price = 4.85
        mainCourses.append(vegetablePasta)
        
        let englishTea = MenuPosition()
        englishTea.type = "Drinks"
        englishTea.name = "English tea"
        englishTea.price = 0.90
        drinks.append(englishTea)
        
        let chocolateCake = MenuPosition()
        chocolateCake.type = "Desserts"
        chocolateCake.name = "Chocolate cake"
        chocolateCake.price = 0.90
        desserts.append(chocolateCake)
        
        let cheeseburger = MenuPosition()
        cheeseburger.type = "Snacks"
        cheeseburger.name = "Cheeseburger"
        cheeseburger.price = 3.2
        snacks.append(cheeseburger)
    }
    
}

func printPosition(_ position: Position) {
    position.printType()
}

class Restaurant {
    
    static let shared = Restaurant()
    
    let menu = Menu()
    private(set) var count: Double = 0.0
    private(set) var orderListPerDay: [String] = []
    
    private init() {
        
    }

    func addPositionInList(_ position: Position) {
        orderListPerDay.append(position.name)
        count += position.price
    }
    func printOrderListPerDay() {
        for value in orderListPerDay {
            print(value)
        }
    }
    func startWorkingDay() {
        orderListPerDay = []
        count = 0
    }
    
}



class ViewController: UIViewController {
    let restaurant = Restaurant.shared
    
    lazy var menu = restaurant.menu
    
    @objc func addPositionInList(_ position: Position) {
        restaurant.addPositionInList(position)
        cashDeskAtTheEndOfTheWorkingDay.setTitle(String(format: "%.2f",restaurant.count), for: .normal)
    }
    @objc func startWorkingDay() {
        restaurant.startWorkingDay()
        cashDeskAtTheEndOfTheWorkingDay.setTitle(String(format: "%.2f",restaurant.count), for: .normal)
    }
    @objc func printOrderListPerDay() {
        restaurant.printOrderListPerDay()
    }
    lazy var firstPosition = {
        let firstPositionButton = UIButton(type: .system)
        firstPositionButton.setTitle(menu.snacks[0].name, for: .normal)
        firstPositionButton.setTitleColor( .green, for: .normal)
        firstPositionButton.backgroundColor = .red
        firstPositionButton.addAction(UIAction(handler: { _ in
            self.addPositionInList(self.menu.snacks[0])
        }), for: .touchUpInside)
        return firstPositionButton
    }()
    
    lazy var secondPosition = {
        let secondPositionButton = UIButton(type: .system)
        secondPositionButton.setTitle(menu.mainCourses[0].name, for: .normal)
        secondPositionButton.setTitleColor( .green, for: .normal)
        secondPositionButton.backgroundColor = .red
        secondPositionButton.addAction(UIAction(handler: { _ in
            self.addPositionInList(self.menu.mainCourses[0])
        }), for: .touchUpInside)
        return secondPositionButton
    }()
    
    lazy var thirdPosition = {
        let thirdPositionButton = UIButton(type: .system)
        thirdPositionButton.setTitle(menu.drinks[0].name, for: .normal)
        thirdPositionButton.setTitleColor( .green, for: .normal)
        thirdPositionButton.backgroundColor = .red
        thirdPositionButton.addAction(UIAction(handler: { _ in
            self.addPositionInList(self.menu.drinks[0])
        }), for: .touchUpInside)
        return thirdPositionButton
    }()
    
    lazy var fouthPosition = {
        let fouthPositionButton = UIButton(type: .system)
        fouthPositionButton.setTitle(menu.desserts[0].name, for: .normal)
        fouthPositionButton.setTitleColor( .green, for: .normal)
        fouthPositionButton.backgroundColor = .red
        fouthPositionButton.addAction(UIAction(handler: { _ in
            self.addPositionInList(self.menu.desserts[0])
        }), for: .touchUpInside)
        return fouthPositionButton
    }()
    
    lazy var fifthPosition = {
        let fifthPositionButton = UIButton(type: .system)
        fifthPositionButton.setTitle(menu.snacks[1].name, for: .normal)
        fifthPositionButton.setTitleColor( .green, for: .normal)
        fifthPositionButton.backgroundColor = .red
        fifthPositionButton.addAction(UIAction(handler: { _ in
            self.addPositionInList(self.menu.snacks[1])
        }), for: .touchUpInside)
        return fifthPositionButton
    }()
    
    lazy var letsWork = {
        let letsWorkButton = UIButton(type: .system)
        letsWorkButton.setTitle("Let's work", for: .normal)
        letsWorkButton.setTitleColor( .black, for: .normal)
        letsWorkButton.backgroundColor = .lightGray
        letsWorkButton.addAction(UIAction(handler: { _ in
            self.startWorkingDay()
        }), for: .touchUpInside)
        return letsWorkButton
    }()
    
    lazy var cashDeskAtTheEndOfTheWorkingDay = {
        let cashDeskAtTheBeginningOfTheWorkingDay = UIButton(type: .system)
        cashDeskAtTheBeginningOfTheWorkingDay.setTitle("0.00", for: .normal)
        cashDeskAtTheBeginningOfTheWorkingDay.setTitleColor( .black, for: .normal)
        cashDeskAtTheBeginningOfTheWorkingDay.backgroundColor = .lightGray
        cashDeskAtTheBeginningOfTheWorkingDay.addAction(UIAction(handler: { _ in
            self.printOrderListPerDay()
        }), for: .touchUpInside)
        return cashDeskAtTheBeginningOfTheWorkingDay
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(firstPosition)
        view.addSubview(secondPosition)
        view.addSubview(thirdPosition)
        view.addSubview(fouthPosition)
        view.addSubview(fifthPosition)
        view.addSubview(letsWork)
        view.addSubview(cashDeskAtTheEndOfTheWorkingDay)
        
        let stack = UIStackView(arrangedSubviews: [letsWork, firstPosition, secondPosition, thirdPosition, fouthPosition, fifthPosition, fifthPosition, cashDeskAtTheEndOfTheWorkingDay])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        view.addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }


}

