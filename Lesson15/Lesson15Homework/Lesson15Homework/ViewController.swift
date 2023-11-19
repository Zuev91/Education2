//
//  ViewController.swift
//  Lesson15Homework
//
//  Created by Alexandr Zuev on 16.11.23.
//

import UIKit

protocol TextFieldDelegate: AnyObject {
    func buttonTapped(button: UIButton)
}

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    let secondStackView = UIStackView()
    let thirdStackView = UIStackView()
    let fourthStackView = UIStackView()
    let fiffthStackView = UIStackView()
    let sixthStackView = UIStackView()
    let seventhStackvew = UIStackView()
    
    let firstName = UITextField()
    let middleName = UITextField()
    let lastName = UITextField()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let thirdLabel = UILabel()
    let somePicture = UIImageView(frame: CGRectMake(10, 10, 10, 10))
    let notesField = UITextView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
    let save = UIButton()
    let cancel = UIButton()
    let clear = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(seventhStackvew)
        
        

        stackView.axis = .horizontal
        firstLabel.text = "First"
        firstName.placeholder = "Enter First Name"
        firstName.borderStyle = .roundedRect
        stackView.addArrangedSubview(firstLabel)
        stackView.addArrangedSubview(firstName)
        stackView.spacing = 16
        stackView.alignment = .leading
        
        secondStackView.axis = .horizontal
        secondLabel.text = "Middle"
        middleName.placeholder = "Enter Middle Name"
        middleName.borderStyle = .roundedRect
        secondStackView.addArrangedSubview(secondLabel)
        secondStackView.addArrangedSubview(middleName)
        secondStackView.spacing = 16
        secondStackView.alignment = .leading

        thirdStackView.axis = .horizontal
        thirdLabel.text = "Last"
        lastName.placeholder = "Enter Last Name"
        lastName.borderStyle = .roundedRect
        thirdStackView.addArrangedSubview(thirdLabel)
        thirdStackView.addArrangedSubview(lastName)
        thirdStackView.spacing = 16
        thirdStackView.alignment = .leading
        
        fourthStackView.axis = .vertical
        fourthStackView.spacing = 6
        fourthStackView.addArrangedSubview(stackView)
        fourthStackView.addArrangedSubview(secondStackView)
        fourthStackView.addArrangedSubview(thirdStackView)
        
        somePicture.image = UIImage(named: "download")
        somePicture.contentMode = .scaleAspectFit
        fiffthStackView.axis = .horizontal
        fiffthStackView.spacing = 16
        fiffthStackView.addArrangedSubview(somePicture)
        fiffthStackView.addArrangedSubview(fourthStackView)
        fiffthStackView.alignment = .lastBaseline
        
        sixthStackView.axis = .horizontal
        sixthStackView.spacing = 16
        save.setTitle("Save", for: .normal)
        cancel.setTitle("Cancel", for: .normal)
        clear.setTitle("Clear", for: .normal)
        sixthStackView.addArrangedSubview(save)
        sixthStackView.addArrangedSubview(cancel)
        sixthStackView.addArrangedSubview(clear)
        
        notesField.translatesAutoresizingMaskIntoConstraints = false
//        notesField.
        notesField.text = "Notes: "
//        notesField.borderStyle = .roundedRect
        notesField.backgroundColor = .gray
        seventhStackvew.axis = .vertical
        seventhStackvew.spacing = 6
        seventhStackvew.addArrangedSubview(fiffthStackView)
        seventhStackvew.addArrangedSubview(notesField)
        seventhStackvew.addArrangedSubview(sixthStackView)
        
        
        
        
    
        seventhStackvew.backgroundColor = .green
        seventhStackvew.alignment = .fill
        seventhStackvew.translatesAutoresizingMaskIntoConstraints = false
        seventhStackvew.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        seventhStackvew.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        

//
    }


}

