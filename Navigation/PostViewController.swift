//
//  PostViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 28.01.2023.
//

import UIKit



class PostViewController: UIViewController {
    
//    var titlePost: String = "nil"
    
    private let textLabel: UILabel = {
        let textLabel = UILabel(frame: CGRect(x: 20, y: 100, width: 350, height: 40))
        textLabel.backgroundColor = .red
        return textLabel
    }()
    
    private lazy var emailOfPhoneField: UITextField = {
            let emailOfPhoneField = UITextField(frame: CGRect(x: 20, y: 150, width: 350, height: 40))
            emailOfPhoneField.backgroundColor = .systemGray6
            emailOfPhoneField.layer.cornerRadius = 10
            emailOfPhoneField.layer.borderWidth = 1
            emailOfPhoneField.layer.borderColor = UIColor.lightGray.cgColor
            emailOfPhoneField.placeholder = "Email of phone"
            emailOfPhoneField.backgroundColor = .systemGray6
            emailOfPhoneField.addTarget(self, action: #selector(textFielAction), for: .editingChanged)
            return emailOfPhoneField
        }()
    
    private let post: Post

    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
        textLabel.text = post.title
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
    
//        self.navigationItem.title = titlePost
//        self.navigationController?.title = "post"
      
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                            target: self,
                                                                            action: #selector(didTapComposeButton))
        
        view.addSubview(emailOfPhoneField)
        view.addSubview(textLabel)

    }
    
    @objc func textFielAction(_ textField: UITextField) {
        
    }
    
    @objc func didTapComposeButton() {
        let vc = InfoViewController()
        present(vc, animated: true)
    }



}
