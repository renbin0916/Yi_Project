//
//  ReadMainVC_Yi.swift
//  Yi
//
//  Created by 易 on 12/28/19.
//  Copyright © 2019 易. All rights reserved.
//

import UIKit
import WebKit

class ReadMainVC_Yi: UIViewController {

    @IBOutlet weak var _textField: UITextField!
    @IBOutlet weak var _searchButton: UIButton!
    @IBOutlet weak var _forbiddenButton: UIButton!
    @IBOutlet weak var _webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        _initNavigationBar()
        

    }
    
    private var _urlText: String {
        return "http://www.baidu.com/s?wd=\(_textField.text ?? "")&tn=baidulocal&rn=20"
    }

}

//MARK: private func
extension ReadMainVC_Yi {
    
    private func _initNavigationBar() {
        
        self.title = "CleadRead"
        
        let leftBarButtonItem = _createBarButtonItem(imageName: "read_favorite_deselected", selectedImageName: "read_favorite_selected")
        let rightBarButtonItem = _createBarButtonItem(imageName: "read_pull_down")
        navigationItem.leftBarButtonItem = leftBarButtonItem
        navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    private func _createBarButtonItem(imageName: String, selectedImageName: String = .empty) -> UIBarButtonItem {
        let button = _createButton(imageName: imageName, selectedImageName: selectedImageName)
        let barButtonItem = UIBarButtonItem(customView: button)
        return barButtonItem
    }
    
    private func _createButton(imageName: String, selectedImageName: String = .empty) -> UIButton {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: imageName), for: .normal)
        if selectedImageName != .empty {
            button.setImage(UIImage(named: selectedImageName), for: .selected)
        }
        button.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        return button
    }
 
    
}
