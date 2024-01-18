import Foundation
import UIKit

class TabBarViewController: UITabBarController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.layer.borderWidth = 0.50
        self.tabBar.layer.borderColor = UIColor.gray.cgColor
        self.tabBar.clipsToBounds = true
        
        setupTabBar()
    }
    
    func setupTabBar() {
        let trackersScreenViewController = TrackersScreenViewController()
        
        let staticticScreenViewController = StaticticScreenViewController()
        
        staticticScreenViewController.tabBarItem = UITabBarItem(
                title: "Статистика",
                image: UIImage(named: "Statistic"),
                selectedImage: nil
            )
        
        trackersScreenViewController.tabBarItem = UITabBarItem(
                title: "Трекеры",
                image: UIImage(named: "Trackers"),
                selectedImage: nil
            )
        
        viewControllers = [trackersScreenViewController, staticticScreenViewController]
        selectedIndex = 0
    }
}

extension TabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        selectedViewController = viewController
    }
}
