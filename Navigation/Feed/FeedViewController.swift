//
//  FeedViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 28.01.2023.
//

import UIKit

class FeedViewController: UIViewController {
        
    var post = Post(title: "Мой пост")
          
       private let stackView: UIStackView = {
           let stackView = UIStackView()
           stackView.axis = .vertical
           stackView.distribution = .equalCentering
           stackView.spacing = 10
           stackView.translatesAutoresizingMaskIntoConstraints = false
           
           return stackView
       }()
      
       private lazy var button: UIButton = {
           let button = UIButton()
           button.setTitle("переход на CollectionView", for: .normal)
           button.backgroundColor = .blue
           button.layer.cornerRadius = 10
           button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
           return button
       }()
       
       private  lazy var buttonTwo: UIButton = {
           let buttonTwo = UIButton()
           buttonTwo.setTitle("переход на профиль", for: .normal)
           buttonTwo.backgroundColor = .red
           buttonTwo.layer.cornerRadius = 10
           buttonTwo.addTarget(self, action: #selector(buttonPressedTwo), for: .touchUpInside)
           return buttonTwo
       }()
       
       @objc func buttonPressed(_ sender: UIButton) {
   //        let post = PostViewController()
   //        self.navigationController?.pushViewController(post, animated: true)
           
           let photo = PhotosViewController()
           self.navigationController?.pushViewController(photo, animated: true)
       }
       
       @objc func buttonPressedTwo(_ sender: UIButton) {
           let profile = ProfileViewController()
           navigationController?.pushViewController(profile, animated: true)
       }
           

       override func viewDidLoad() {
           super.viewDidLoad()
           
           title = "Лента"
           view.backgroundColor = .systemGray
           setupConstraints()
       
       }
          
       private func setupConstraints() {
           view.addSubview(stackView)
           stackView.addArrangedSubview(button)
           stackView.addArrangedSubview(buttonTwo)
           
           NSLayoutConstraint.activate([
               stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
               stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
               stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
               
           ])
       }

}
    

