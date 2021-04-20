//
//  Ext+UIColor.swift
//  BookCore
//
//  Created by Beatriz Carlos on 16/04/21.
//

import UIKit

public extension UIColor {
    struct PrimaryColors {
        static var yellow: UIColor  {
            return UIColor(red: 1.00, green: 0.95, blue: 0.00, alpha: 1.00)
        }
        
        static var red: UIColor {
            return UIColor(red: 1.00, green: 0.00, blue: 0.00, alpha: 1.00) 
        }
        
        static var blue: UIColor {
            return UIColor(red: 0.22, green: 0.19, blue: 0.63, alpha: 1.00)
        }
    }
    
    struct SecondaryColors {
        static var orange: UIColor {
            return UIColor(red: 1.00, green: 0.35, blue: 0.00, alpha: 1.00)
        }
        
        static var green: UIColor {
            return UIColor(red: 0.00, green: 0.66, blue: 0.35, alpha: 1.00)
        }
        
        static var purple: UIColor {
            return UIColor(red: 0.39, green: 0.15, blue: 0.59, alpha: 1.00)
        }
    }
}
