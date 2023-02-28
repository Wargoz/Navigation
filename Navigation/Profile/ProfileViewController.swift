//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Александр Варганов on 30.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView(frame: .zero)
    var newButton: UIButton = {
        let button = UIButton()
        button.setTitle("Press me", for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.textColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4
        
        return button
    }()
    
    
    
    override func viewDidLoad () {
        super.viewDidLoad()
        }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        view.backgroundColor = .yellow
        
        setLayouts()
    }
    
    private func setLayouts() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        profileHeaderView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        profileHeaderView.heightAnchor.constraint(equalToConstant: 220).isActive = true
        
        newButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        newButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
}


//private lazy var buttonText: UIButton = {
//        let button = UIButton ()
//        button.setTitle("Show Status", for: .normal)
//        button.backgroundColor = .blue
//        button.titleLabel?.textColor = .white
//        button.layer.cornerRadius = 4
//        button.clipsToBounds = true
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.addTarget(self, action: #selector(showStatus), for: .touchUpInside)
//        return button
//    }()
