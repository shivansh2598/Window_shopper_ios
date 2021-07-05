//
//  ViewController.swift
//  window-shopper
//
//  Created by Shivansh Sinha on 05/07/21.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action : #selector(MainVC.calculate), for : .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        numberLbl.isHidden = true
        hourLbl.isHidden = true
    }

    @objc func calculate()
    {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                let hours : Int = Wage.getHours(forWage: wage, andPrice: price)
                
                view.endEditing(true)
                numberLbl.isHidden = false
                hourLbl.isHidden = false
                numberLbl.text = "\(hours)"
            }
        }
    }

    @IBAction func clearCalcTapped(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        numberLbl.isHidden = true
        hourLbl.isHidden = true
    }
}

