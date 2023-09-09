//
//  ViewController.swift
//  RIckAndMorty
//
//  Created by Sergey Ilyin on 09.09.2023.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setUpTabs()
    }

    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let characterNVC = UINavigationController(rootViewController: characterVC)
        let locationNVC = UINavigationController(rootViewController: locationVC)
        let episodeNVC = UINavigationController(rootViewController: episodeVC)
        let settingsNVC = UINavigationController(rootViewController: settingsVC)
        
        characterNVC.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        locationNVC.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe"),
            tag: 2
        )
        episodeNVC.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 3
        )
        settingsNVC.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 4
        )
        
        let controllers = [characterNVC, locationNVC, episodeNVC, settingsNVC]
        
        for nav in controllers {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(controllers, animated: true)
        
    }
    
}

