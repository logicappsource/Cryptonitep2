//
//  Coordinator.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//Copyright © 2017 Logicappsource. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var children: [Coordinator] { get set }
    func start()
}
