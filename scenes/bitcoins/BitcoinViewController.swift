//
//  BitcoinViewController.swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright (c) 2017 Logicappsource. All rights reserved.
//

import UIKit

class BitcoinViewController: UIViewController {

    private var presenter: BitcoinPresenterInput!

    class func instantiate(with presenter: BitcoinPresenterInput) -> BitcoinViewController {
        let name = "\(BitcoinViewController.self)"
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name) as! BitcoinViewController
        vc.presenter = presenter
        return vc
    }

    // MARK: - View Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewCreated()
    }

    // MARK: - Callbacks -
    @IBAction func showDetailPressed(_ sender: Any) {
        presenter.showDetail()
        
    }
    
}

// MARK: - Display Logic -

// PRESENTER -> VIEW
extension BitcoinViewController: BitcoinPresenterOutput {

}
