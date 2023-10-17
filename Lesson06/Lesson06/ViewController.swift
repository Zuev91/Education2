//
//  ViewController.swift
//  Lesson06
//
//  Created by Alexandr Zuev on 17.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Task1. Посчитать количество символов в массиве. (2 способа: через цикл for и с помощью функции высшего порядка)
        var arrayOfStrings = ["abc", "dwefgefg13", "oiut", "qwertfds", "3fdvdsfvv", "qwef gsdjkfnb", "qegbg sdg qwe"]
        var count = 0
        for value in arrayOfStrings {
            count += value.count
        }
        print(count)
        let count2 = arrayOfStrings.map {$0.count}.reduce(0, +)
        print(count2)
        
        //  Task2. Если в строке символов меньше чем 5, то не использовать далее
        arrayOfStrings = arrayOfStrings.filter {$0.count > 5}
        
        // Task3. Количество строк, где символов больше чем 10
        let count3 = arrayOfStrings.filter {$0.count > 10}.count
        print(count3)
        // Task4. Распечатать строку в которой больше всего символов
        var tmp = arrayOfStrings[0]
        for value in arrayOfStrings {
            tmp = tmp.count < value.count ? value : tmp
        }
        print(tmp)
        // Task5. Отсортировать массив, по возрастанию количества символов в строке
        arrayOfStrings = arrayOfStrings.sorted {
            $0.count < $1.count
        }
        print(arrayOfStrings)
    }


}

