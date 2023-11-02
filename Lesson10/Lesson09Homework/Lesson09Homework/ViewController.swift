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

class Restaurant {
    private init() {}
    
    static let shared = Restaurant()
    
    private(set) var count: Double = 0.0
    private(set) var orderListPerDay: [String] = []

    func addPositionInList(_ title: String, _ price: Double) {
        orderListPerDay.append(title)
        count += price
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
    let tmp = Restaurant.shared
    @objc func addPositionInList(title: String, price: Double) {
        tmp.addPositionInList(title, price)
        cashDeskAtTheEndOfTheWorkingDay.setTitle(String(tmp.count), for: .normal)
    }
    let firstPosition = {
        let firstPositionButton = UIButton(type: .system)
        let title = "Cheese omelette"
        let price = 3.5
        firstPositionButton.setTitle(title, for: .normal)
        firstPositionButton.setTitleColor( .green, for: .normal)
        firstPositionButton.backgroundColor = .red
        firstPositionButton.addTarget(self, action: #selector(addPositionInList(title: title, price: price)), for: .touchUpInside)
        return firstPositionButton
    }()
    
    let secondPosition = {
        let secondPositionButton = UIButton(type: .system)
        secondPositionButton.setTitle("2", for: .normal)
        secondPositionButton.setTitleColor( .green, for: .normal)
        secondPositionButton.backgroundColor = .red
        return secondPositionButton
    }()
    
    let thirdPosition = {
        let thirdPositionButton = UIButton(type: .system)
        thirdPositionButton.setTitle("3", for: .normal)
        thirdPositionButton.setTitleColor( .green, for: .normal)
        thirdPositionButton.backgroundColor = .red
        return thirdPositionButton
    }()
    
    let fouthPosition = {
        let fouthPositionButton = UIButton(type: .system)
        fouthPositionButton.setTitle("4", for: .normal)
        fouthPositionButton.setTitleColor( .green, for: .normal)
        fouthPositionButton.backgroundColor = .red
        return fouthPositionButton
    }()
    
    let fifthPosition = {
        let fifthPositionButton = UIButton(type: .system)
        fifthPositionButton.setTitle("5", for: .normal)
        fifthPositionButton.setTitleColor( .green, for: .normal)
        fifthPositionButton.backgroundColor = .red
        return fifthPositionButton
    }()
    
    let cashDeskDuringTheWorkingDay = {
        let cashDeskDuringTheWorkingDay = UIButton(type: .system)
        cashDeskDuringTheWorkingDay.setTitle("6", for: .normal)
        cashDeskDuringTheWorkingDay.setTitleColor( .black, for: .normal)
        cashDeskDuringTheWorkingDay.backgroundColor = .lightGray
        return cashDeskDuringTheWorkingDay
    }()
    
    let cashDeskAtTheEndOfTheWorkingDay = {
        let cashDeskAtTheBeginningOfTheWorkingDay = UIButton(type: .system)
        cashDeskAtTheBeginningOfTheWorkingDay.setTitle("0", for: .normal)
        cashDeskAtTheBeginningOfTheWorkingDay.setTitleColor( .black, for: .normal)
        cashDeskAtTheBeginningOfTheWorkingDay.backgroundColor = .lightGray
        return cashDeskAtTheBeginningOfTheWorkingDay
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(firstPosition)
        view.addSubview(secondPosition)
        view.addSubview(thirdPosition)
        view.addSubview(fouthPosition)
        view.addSubview(fifthPosition)
        view.addSubview(cashDeskDuringTheWorkingDay)
        view.addSubview(cashDeskAtTheEndOfTheWorkingDay)
        
        let stack = UIStackView(arrangedSubviews: [cashDeskDuringTheWorkingDay, firstPosition, secondPosition, thirdPosition, fouthPosition, fifthPosition, fifthPosition, cashDeskAtTheEndOfTheWorkingDay])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        view.addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }


}

