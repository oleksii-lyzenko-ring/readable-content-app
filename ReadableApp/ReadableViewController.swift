//
//  ReadableViewController.swift
//  ReadableApp
//
//  Created by Alexey Lizenko on 1/29/18.
//  Copyright © 2018 Alexey Lizenko. All rights reserved.
//

import UIKit

class ReadableViewController: UIViewController, MarginWidthDesirable {
    var desirableContentWidth: CGFloat = 512
    
    override func viewWillLayoutSubviews() {
        updateMarginsForDesirableContentSize()
        super.viewWillLayoutSubviews()
    }
    
}
