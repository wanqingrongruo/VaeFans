//
//  ViewController.swift
//  VaeFans
//
//  Created by roni on 2020/6/22.
//  Copyright © 2020 roni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = FantasticView(frame: view.bounds)
        view.addSubview(fantasticView)
    }
}

