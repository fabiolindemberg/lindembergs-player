//
//  utils.swift
//  lindembergsPlayer
//
//  Created by Fabio Lindemberg on 30/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit

extension UIView {
    
    func constraint(pattern: String, views: UIView...){
        var mViews: [String: UIView] = [:]
        
        for (index, view) in views.enumerated() {
            view.translatesAutoresizingMaskIntoConstraints = false
            mViews["v\(index)"] = view
        }
       
        let opt = NSLayoutConstraint.FormatOptions()
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: pattern, options: opt, metrics: nil, views: mViews))
    }
}


