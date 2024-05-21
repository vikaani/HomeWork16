//
//  ApplicationCoordinator.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

final class ApplicationCoordinator {
    var rootViewController: UINavigationController {
        navigationViewController
    }
    
    private let navigationViewController: UINavigationController
    
    init(navigationViewController: UINavigationController) {
        self.navigationViewController = navigationViewController
    }
    
    func start() {
        openOnboardingSreen()
    }
    
    private func openOnboardingSreen() {
        let vc = OnboardingViewController()
        vc.onTapGo = openMainFlowScreen
        navigationViewController.viewControllers.append(vc)
    }

    private func openMainFlowScreen() {
        let vc = MainFlowViewController()
        vc.onTapCell = openDetailsScreen
        navigationViewController.setViewControllers([vc], animated: false)
    }
    
    private func openDetailsScreen(number: Int) {
        let vc = DetailsViewController(number: number)
        navigationViewController.pushViewController(vc, animated: true)
    }
}
