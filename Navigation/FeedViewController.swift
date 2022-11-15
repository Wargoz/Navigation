//
//  FeedViewController.swift
//  Navigation
//
//  Created by Александр Варганов on 30.10.2022.
//

import UIKit

struct Post {
    let title: String
}

class FeedViewController: UIViewController {
    
    let post1 = Post(title: "Hello")
    
    private lazy var button: UIButton = {
        let button = UIButton ()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 12
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(button)
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        postViewController.title = post1.title
        navigationController?.pushViewController(postViewController, animated: true)
    }
}

   

