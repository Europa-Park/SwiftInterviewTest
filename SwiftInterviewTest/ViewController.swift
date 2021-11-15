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
    
    lazy var fullNameLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    override func loadView() {
        
        super.loadView()
        
        view.backgroundColor = UIColor.systemGroupedBackground
        setUpViews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstNameTextField.addTarget(self, action: #selector(self.nameTextChanged(_:)), for: .editingChanged)
        lastNameTextField.addTarget(self, action: #selector(self.nameTextChanged(_:)), for: .editingChanged)
    }
    
    func setUpViews() {
        
        let topMargin = 100.0
        let spacing = 20.0
        
        view.addSubview(firstNameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(fullNameLabel)
        
        NSLayoutConstraint.activate([
            firstNameTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: spacing),
            firstNameTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -spacing),
            firstNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topMargin),
            
            lastNameTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: spacing),
            lastNameTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -spacing),
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: spacing),
            
            fullNameLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            fullNameLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            fullNameLabel.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: spacing),
        
        ])
    }
    
    @objc func nameTextChanged(_ sender: UITextField) {
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        var fullName = ""
        
        if firstName.count > 0, lastName.count > 0 {
            
            fullName = lastName + ", " + firstName
        }
        else {
            
            fullName = lastName + firstName
        }
        
        fullNameLabel.text = fullName
    }


}

