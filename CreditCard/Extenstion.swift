//
//  Extenstion.swift
//  CreditCard
//
//  Created by hany karam on 5/9/21.
//

import UIKit

extension VisaVC: UITextFieldDelegate {
    @objc func textFieldDidChange(_ textField: UITextField) {
        creditCardView.cardHolderString = textField.text!
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == cardHolderNameTextField {
            textField.resignFirstResponder()
            paymentTextField.becomeFirstResponder()
        } else if textField == paymentTextField  {
            textField.resignFirstResponder()
        }
        return true
    }
}

extension UITextField {
    
    func setBottomBorder() {
        self.borderStyle = UITextField.BorderStyle.none
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width,   width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
