//
//  ViewController.swift
//  Lesson14Lecture
//
//  Created by Alexandr Zuev on 15.11.23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
//    let scrollView = UIScrollView()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
    }

}

