//
//  ViewController.swift
//  ShortcutSupportApp
//
//  Created by JW_Macbook on 2020/03/17.
//  Copyright © 2020 JW_Macbook. All rights reserved.
//

import UIKit

extension Notification.Name {
    public static let alertShow = Notification.Name("AlertShow")
}

@objcMembers class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(alertSample), name: .alertShow, object: nil)
    }
    
    func alertSample() {
        let ac = UIAlertController(title: "단축어앱 지원", message: "얼넛으로 확인", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(ac, animated: true)
    }
}

