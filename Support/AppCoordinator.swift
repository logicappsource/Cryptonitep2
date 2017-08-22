//
//  AppCoordinator.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//Copyright © 2017 Logicappsource. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {

    let window: UIWindow
    var children: [Coordinator] = []

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        // Perform initial application seutp.
        setupAfterLaunch()

        // Start your first flow here. For example, this is the
        // ideal place for deciding if you should show login or main flows.
        showMain()

        // Finally make the window key and visible.
        window.makeKeyAndVisible()
    }

    // MARK: - Flows -

    func showMain() {
        // Create your child coordinator here, add it as a child and start it.
        // Make sure you set the root view controller of the window.
        
        let navVC = UINavigationController()
        let bitcoinCoordinator = BitcoinCoordinator(navigationController: navVC)
        bitcoinCoordinator.start()
        children.append(bitcoinCoordinator)
        window.rootViewController = navVC
        
    }

    // MARK: - Additional Setup -

    func setupAfterLaunch() {
        // Perform initial app setup after launch like analytics, integrations and more.
    }
}
