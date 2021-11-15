//
//  ViewController.swift
//  SwiftInterviewTest
//
//  Created by Sreeraj PR on 15/11/21.
//

import UIKit

class ViewController: UIViewController {

    lazy var firstNameTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "First Name"
        textField.borderStyle = .bezel
        textField.autocorrectionType = .no
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var lastNameTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Last Name"
        textField.borderStyle = .bezel
        textField.autocorrectionType = .no
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.systemGroupedBackground
        setUpViews()
    }
    
    func setUpViews() {
        
        var fullNameLabel = UILabel()
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.textAlignment = .center
        
        view.addSubview(firstNameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(fullNameLabel)
        
        NSLayoutConstraint.activate([
            firstNameTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            firstNameTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            firstNameTextField.topAnchor.constraint(equalTo: view.topAnchor),
            
            lastNameTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            lastNameTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 20),
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 20),
            
            fullNameLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            fullNameLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            fullNameLabel.topAnchor.constraint(equalTo: lastNameTextField.topAnchor, constant: 20),
        
        ])
    }


}

