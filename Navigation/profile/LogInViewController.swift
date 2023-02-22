//
//  LogInViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 16.02.2023.
//

import UIKit

class LogInViewController: UIViewController {
    
    let color = UIColor(named: "ColorSet")
    
    private let scrollView: UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.clipsToBounds = true
            return scrollView
        }()

    private let emailOfPhoneField: UITextField = {
            let emailOfPhoneField = UITextField()
            emailOfPhoneField.backgroundColor = .systemGray6
            emailOfPhoneField.autocapitalizationType = .none
        
            emailOfPhoneField.layer.cornerRadius = 10
            emailOfPhoneField.layer.borderWidth = 0.5
            emailOfPhoneField.layer.borderColor = UIColor.lightGray.cgColor
            emailOfPhoneField.placeholder = "Email of phone"
            emailOfPhoneField.backgroundColor = .systemGray6
            emailOfPhoneField.textColor = .black
//            emailOfPhoneField.font = .systemFont(ofSize: 16)
//            emailOfPhoneField.tintColor =
            emailOfPhoneField.autocapitalizationType = .none
            emailOfPhoneField.translatesAutoresizingMaskIntoConstraints = false
            return emailOfPhoneField
        }()
        
        private let passwordField: UITextField = {
            let passwordField = UITextField()
            passwordField.backgroundColor = .systemGray6
            passwordField.layer.cornerRadius = 10
            passwordField.layer.borderWidth = 0.5
            passwordField.layer.borderColor = UIColor.lightGray.cgColor
            passwordField.placeholder = "Password"
            passwordField.backgroundColor = .systemGray6
            passwordField.textColor = .black
//            passwordField.font = .systemFont(ofSize: 16)
//            passwordField.tintColor =
            passwordField.autocapitalizationType = .none
            passwordField.isSecureTextEntry = true
            passwordField.translatesAutoresizingMaskIntoConstraints = false
            return passwordField
        }()
    
    private let logInButton: UIButton = {
        let logInButton = UIButton()
        logInButton.setTitle("log in", for: .normal)
        logInButton.backgroundColor = UIColor(named: "ColorSet")
        logInButton.setTitleColor(.white, for: .normal)
        logInButton.layer.cornerRadius = 12
        logInButton.layer.masksToBounds = true
        logInButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        return logInButton
    }()
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logoVK")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
        
    }()

    @objc func logInButtonPressed() {
//        let profileVC = ProfileViewController()
//        self.navigationController?.pushViewController(profileVC, animated: true)
        

    }
    
    private func setupView() {
        view.addSubview(scrollView)
        scrollView.addSubview(logInButton)
        scrollView.addSubview(emailOfPhoneField)
        scrollView.addSubview(passwordField)
        scrollView.addSubview(imageView)
    
        
        logInButton.addTarget(self, action: #selector(logInButtonPressed), for: .touchUpInside)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        constraints()
        
        // проверяем скрывается   logInVC.navigationBar.isHidden = true
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
//                                                                            target: self,
//                                                                            action: #selector(didTapComposeButton))

    }
    
//    @objc func didTapComposeButton() {
//        let vc = InfoViewController()
//        let navVC = UINavigationController(rootViewController: vc)
//        present(navVC, animated: true)
//
//
//    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = view.bounds
//        constraints()

    
    }
    
  
    
    func constraints() {
        NSLayoutConstraint.activate([
        
        
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
                        
            emailOfPhoneField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            emailOfPhoneField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            emailOfPhoneField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            emailOfPhoneField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordField.topAnchor.constraint(equalTo: emailOfPhoneField.bottomAnchor, constant: 0),
            passwordField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            passwordField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            passwordField.heightAnchor.constraint(equalToConstant: 50),
            

            logInButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 16),
            logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            logInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logInButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        
    }
}

