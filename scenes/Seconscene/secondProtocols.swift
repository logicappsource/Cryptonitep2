//
//  secondProtocols.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright (c) 2017 Logicappsource. All rights reserved.
//

import Foundation
import UIKit

// ======== Coordinator ======== //

//protocol secondCoordinatorDelegate: class {
//    func coordinator(_ coordinator: Coordinator, finishedWithSuccess success: Bool)
//}

// PRESENTER -> COORDINATOR
protocol secondCoordinatorInput: class {

}

// ======== Interactor ======== //

// PRESENTER -> INTERACTOR
protocol secondInteractorInput {
    // func perform(_ request: second.Request.Work)
}

// INTERACTOR -> PRESENTER (indirect)
protocol secondInteractorOutput: class {
    // func present(_ response: second.Response.Work)
}

// ======== Presenter ======== //

// VIEW -> PRESENTER
protocol secondPresenterInput {
    func viewCreated()
}

// PRESENTER -> VIEW
protocol secondPresenterOutput: class {
    // func display(_ displayModel: second.DisplayData.Work)
}
