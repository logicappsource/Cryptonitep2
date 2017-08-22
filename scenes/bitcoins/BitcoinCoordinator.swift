//
//  BitcoinCoordinator.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright (c) 2017 Logicappsource. All rights reserved. TEST
//

import Foundation
import UIKit

class BitcoinCoordinator: Coordinator {
    let navigationController: UINavigationController
    // NOTE: This array is used to retain child coordinators. Don't forget to
    // remove them when the coordinator is done.
    var children: [Coordinator] = []
//    weak var delegate: BitcoinCoordinatorDelegate?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let interactor = BitcoinInteractor()
        let presenter = BitcoinPresenter(interactor: interactor, coordinator: self)
        let vc = BitcoinViewController.instantiate(with: presenter)

        interactor.output = presenter
        presenter.output = vc

        // FIXME: Display as you need
         navigationController.setViewControllers([vc], animated: false)
    }
}

// PRESENTER -> COORDINATOR
extension BitcoinCoordinator: BitcoinCoordinatorInput {
    func startDetailScene() {
        let detailCoordinator = secondCoordinator(navigationController: navigationController)
        detailCoordinator.start()
        children.removeAll()
        children.append(detailCoordinator)
    }
    

}
