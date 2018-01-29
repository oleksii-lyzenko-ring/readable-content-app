//
//  UIViewController+ContentWidth.swift
//  ReadableApp
//
//  Created by Alexey Lizenko on 1/29/18.
//  Copyright © 2018 Alexey Lizenko. All rights reserved.
//

import UIKit

protocol MarginWidthDesirable {
    var desirableContentWidth: CGFloat { get }
    func updateMarginsForDesirableContentSize()
}

extension MarginWidthDesirable where Self: UIViewController  {
    func updateMarginsForDesirableContentSize() {
        let superMargin = self.view.superview?.layoutMargins
        var margin = superMargin ?? UIEdgeInsets.zero
        
        let marginWidth = (view.bounds.width - desirableContentWidth) / 2
        margin.left = marginWidth
        margin.right = marginWidth
        margin.bottom = 0
        margin.top = 0
        self.view.layoutMargins = margin
    }
}
