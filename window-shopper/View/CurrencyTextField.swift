//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Shivansh Sinha on 05/07/21.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView()
    {
        layer.cornerRadius = 5.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        textAlignment = .center
        
        let place = NSAttributedString(string: placeholder ?? " ", attributes: [.foregroundColor : UIColor.white]) //using nil coelacing
        attributedPlaceholder = place
        
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
 
