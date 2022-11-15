//
//  TabBarController.swift
//  Navigation
//
//  Created by Александр Варганов on 15.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        viewControllers = createViewControllers()
        selectedIndex = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    private func createViewControllers () -> [UIViewController]{
        
        var controllers = [UIViewController]()
        let feedViewController = FeedViewController()
        feedViewController.tabBarItem = UITabBarItem(title:"Лента", image: UIImage (systemName: "doc.richtext"), selectedImage: UIImage (systemName: "doc.richtext"))
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        controllers.append(feedNavigationController)
        
        let profileViewController = ProfileViewController ()
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), selectedImage:UIImage(systemName: "person.circle"))
        let profileNavigationController = UINavigationController (rootViewController: profileViewController)
        controllers.append (profileNavigationController)
        
        return controllers
    }
}
