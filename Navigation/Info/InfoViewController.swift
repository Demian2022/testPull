//
//  InfoViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 28.01.2023.
//

import UIKit

class InfoViewController: UIViewController {

    private lazy var allertButton: UIButton = {
        let button = UIButton()
        button.setTitle("Allert", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(allertButtonTapped), for: .touchUpInside)
        return button
    }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemGray
            view.addSubview(allertButton)
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        allertButton.frame = CGRect(x: 100, y: 100, width: 250, height: 50)
        allertButton.center = self.view.center
               
    }
    
    @objc private func allertButtonTapped(sender: UIButton) {
        showActionShett()
     
//        let alert = UIAlertController(title: "перейти назад", message: .none, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "отмена", style: .cancel))
//        alert.addAction(UIAlertAction(title: "удалить", style: .destructive))
//
//        alert.addAction(UIAlertAction(title: "назад", style: .default) { _ in
//            self.dismiss(animated: true)
//
//
//
//        })
//        self.present(alert, animated: true)
    }

        private func showActionShett() {
            let actionsheet = UIAlertController(title: title, message: .none, preferredStyle: .actionSheet)

            actionsheet.addAction(UIAlertAction(title: "продолжить", style: .default, handler: { _ in             
                print("tapped Dismiss")
            }))
            actionsheet.addAction(UIAlertAction(title: "удалить", style: .destructive, handler: { _ in
                print("tapped Dismiss")
            }))
            
            actionsheet.addAction(UIAlertAction(title: "назад", style: .cancel) { _ in
                self.dismiss(animated: true)
                print("tapped Dismiss")
            })
            
            present(actionsheet, animated: true)
            
        }

}
