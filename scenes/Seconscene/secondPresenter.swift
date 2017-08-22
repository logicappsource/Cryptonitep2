//
//  secondPresenter.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright (c) 2017 Logicappsource. All rights reserved.
//

import Foundation

class secondPresenter {
    let interactor: secondInteractorInput
    weak var coordinator: secondCoordinatorInput?
    weak var output: secondPresenterOutput?

    init(interactor: secondInteractorInput, coordinator: secondCoordinatorInput) {
        self.interactor = interactor
        self.coordinator = coordinator
    }
}

// MARK: - User Events -

extension secondPresenter: secondPresenterInput {
    func viewCreated() {

    }
}

// MARK: - Presentation Logic -

// INTERACTOR -> PRESENTER (indirect)
extension secondPresenter: secondInteractorOutput {

}
