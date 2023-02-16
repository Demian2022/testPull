//
//  LogInViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 16.02.2023.
//

import UIKit

class LogInViewController: UIViewController {
    
    private let emailField: UITextField = {
            let field = UITextField()
            field.autocapitalizationType = .none
            field.autocorrectionType = .no
            field.returnKeyType = .continue
            field.layer.cornerRadius = 12
            field.layer.borderWidth = 1
            field.layer.borderColor = UIColor.lightGray.cgColor
            field.placeholder = "Email Address..."
            field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
            field.leftViewMode = .always
            field.backgroundColor = .white
            return field
        }()
        
        private let passwordField: UITextField = {
            let field = UITextField()
            field.autocapitalizationType = .none
            field.autocorrectionType = .no
            field.returnKeyType = .done
            field.layer.cornerRadius = 12
            field.layer.borderWidth = 1
            field.layer.borderColor = UIColor.lightGray.cgColor
            field.placeholder = "Password..."
            field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
            field.leftViewMode = .always
            field.backgroundColor = .white
            field.isSecureTextEntry = true
            return field
        }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("button", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(button)
    }
    
}
