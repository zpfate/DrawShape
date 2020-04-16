//
//  File.swift
//  DrawShape
//
//  Created by Twisted Fate on 2020/4/15.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

import Foundation
import UIKit
class RRSecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.post(name: NSNotification.Name("noti"), object: nil)
        
    }
}
