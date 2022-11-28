//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Александр Варганов on 30.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(profileHeaderView)
        profileHeaderView.frame = view.frame
    }
    
}
