//
//  HomeViewController.swift
//  Yi
//
//  Created by 易 on 12/28/19.
//  Copyright © 2019 易. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK: user actions
    @IBAction func _readButtonClicked(_ sender: UIButton) {
        _gotoReadViewController()
    }
    
}

//MARK: private func
extension HomeViewController {
    private func _gotoReadViewController() {
        let readVC = ReadMainVC_Yi()
        navigationController?.pushViewController(readVC, animated: true)
    }
}
