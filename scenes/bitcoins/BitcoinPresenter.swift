//
//  BitcoinPresenter.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright (c) 2017 Logicappsource. All rights reserved.
//

import Foundation

class BitcoinPresenter {
    let interactor: BitcoinInteractorInput
    weak var coordinator: BitcoinCoordinatorInput?
    weak var output: BitcoinPresenterOutput?

    init(interactor: BitcoinInteractorInput, coordinator: BitcoinCoordinatorInput) {
        self.interactor = interactor
        self.coordinator = coordinator
    }
}

// MARK: - User Events -

extension BitcoinPresenter: BitcoinPresenterInput {
    func showDetail() {
        coordinator?.startDetailScene()
    }
    
    func viewCreated() {
        
    }
}

// MARK: - Presentation Logic -

// INTERACTOR -> PRESENTER (indirect)
extension BitcoinPresenter: BitcoinInteractorOutput {

}
