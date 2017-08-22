//
//  secondCoordinator.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright (c) 2017 Logicappsource. All rights reserved. TEST
//

import Foundation
import UIKit

class secondCoordinator: Coordinator {
    let navigationController: UINavigationController
    // NOTE: This array is used to retain child coordinators. Don't forget to
    // remove them when the coordinator is done.
    var children: [Coordinator] = []
//    weak var delegate: secondCoordinatorDelegate?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let interactor = secondInteractor()
        let presenter = secondPresenter(interactor: interactor, coordinator: self)
        let vc = secondViewController.instantiate(with: presenter)

        interactor.output = presenter
        presenter.output = vc

        // FIXME: Display as you need
         navigationController.pushViewController(vc, animated: true)
    }
}

// PRESENTER -> COORDINATOR
extension secondCoordinator: secondCoordinatorInput {

}
