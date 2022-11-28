//
//  PostViewController.swift
//  Navigation
//
//  Created by Александр Варганов on 13.11.2022.
//

import UIKit


class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        navigationItem.rightBarButtonItem = createRightBarButtonItem()
    }
    
    private func createRightBarButtonItem() -> UIBarButtonItem {
        let button = UIButton()
        button.setImage(UIImage(systemName: "info.circle"), for: .normal)
        button.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(goToInfoViewController), for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        return barButton
    }
    
    @objc private func goToInfoViewController() {
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
}
