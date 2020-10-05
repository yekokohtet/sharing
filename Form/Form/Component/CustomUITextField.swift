//
//  CustomUITextField.swift
//  Form
//
//  Created by Ye Ko Ko Htet on 01/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class CustomUITextField: UITextField {

    override func caretRect(for position: UITextPosition) -> CGRect {
      return .zero
    }

    override func selectionRects(for range: UITextRange) -> [UITextSelectionRect] {
      return []
    }

    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
      return false
    }
}
