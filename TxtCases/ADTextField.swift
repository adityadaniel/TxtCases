//
//  ADTextField.swift
//  TxtCases
//
//  Created by Daniel Aditya Istyana on 25/07/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ADTextField: UITextField {
    
    init(frame: CGRect, placeholderText: String = "default Placeholder") {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
