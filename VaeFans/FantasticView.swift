//
//  FantasticView.swift
//  VaeFans
//
//  Created by roni on 2020/6/22.
//  Copyright © 2020 roni. All rights reserved.
//

import Foundation
import UIKit

class FantasticView: UIView {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            }
        }

        scheduledColorChanged.fire()
    }
}
