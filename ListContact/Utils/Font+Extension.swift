//
//  Font+Extension.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//

import UIKit

extension UIFont {
    
    static func configure(fontSize: CGFloat, weight: UIFont.Weight) -> UIFont {
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: weight)

        if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
            return UIFont(descriptor: descriptor, size: fontSize)
        }
        
        return systemFont
    }
    
}
