//
//  SAButton.swift
//  Bio
//
//  Created by Roman on 08.07.2020.
//  Copyright © 2020 Roman. All rights reserved.
//

import UIKit

class SAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        
        backgroundColor     = #colorLiteral(red: 0.2316833138, green: 0.225343883, blue: 0.2267376184, alpha: 1)
        titleLabel?.font    = UIFont(name: "Noteworthy-Bold", size: 24)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}
