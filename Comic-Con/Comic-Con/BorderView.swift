//
//  BorderView.swift
//  testeCircle
//
//  Created by Eduardo Ribeiro on 08/04/19.
//  Copyright © 2019 Eduardo Renani Ribeiro. All rights reserved.
//

import UIKit

@IBDesignable
class BorderView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}

