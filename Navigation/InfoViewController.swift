//
//  InfoViewController.swift
//  Navigation
//
//  Created by Александр Варганов on 15.11.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var button: UIButton = {
           let button = UIButton ()
           button.backgroundColor = .blue
           button.layer.cornerRadius = 12
           button.setTitle("Боря молодец!", for: .normal)
           button.setTitleColor(.lightGray, for: .normal)
           button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
           button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = .green
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
           let alert = UIAlertController(title: "Hello", message: "Alex krasavchik", preferredStyle: .alert)
           let action = UIAlertAction(title: "Print", style: .default) { _ in
               print("HomeWork done!")
           }
           alert.addAction(action)
           present(alert, animated: true)
       }
   }

