import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.layer.borderWidth = 0.50
        self.tabBar.layer.borderColor = UIColor.gray.cgColor
        self.tabBar.clipsToBounds = true
        
        setupTabBar()
    }
}

extension TabBarController {
    
    func setupTabBar() {
        let trackersScreenViewController = TrackersScreenViewController()
        let staticticScreenViewController = StaticticScreenViewController()
        
        trackersScreenViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(named: "Trackers"),
            selectedImage: nil
        )
        
        staticticScreenViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(named: "Statistic"),
            selectedImage: nil
        )
        
        let viewControllers = [trackersScreenViewController, staticticScreenViewController]
        selectedIndex = 0
        
        self.viewControllers = viewControllers.map { controller in
            UINavigationController(rootViewController: controller)
        }
    }
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        selectedViewController = viewController
    }
}
