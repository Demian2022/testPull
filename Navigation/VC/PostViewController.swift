//
//  PostViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 28.01.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "nil"
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = .systemGray
    
        self.navigationItem.title = titlePost
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                            target: self,
                                                                            action: #selector(didTapComposeButton))

    }
    
    @objc func didTapComposeButton() {
        let vc = InfoViewController()
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC, animated: true)

        
    }



}
