//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Shivansh Sinha on 05/07/21.
//

import UIKit

@IBDesignable   //Reqd if we want to see the changes made via code in the Main.storyboard file.
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {        //used to draw custom icons
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size/2, width: size, height: size)) //Each programmed component must have a frm
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8390288949, green: 0.8391702771, blue: 0.839010179, alpha: 1)
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.clipsToBounds = true
        currencyLbl.textAlignment = .center
        
        let formatter = NumberFormatter()   //used to get the currency sign
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl) //used to add a subview on a mainview
    }
    
    override func prepareForInterfaceBuilder() {    //custom function reqd with @IBdesginable to see the changes. Only the code present inside this function will be seen in the storyboard
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
        clipsToBounds = true

        let place = NSAttributedString(string: placeholder ?? " ", attributes: [.foregroundColor : UIColor.white]) //using optional nil coelacing
        attributedPlaceholder = place
        
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
 
