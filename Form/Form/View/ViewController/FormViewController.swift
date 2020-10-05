//
//  FormViewController.swift
//  Form
//
//  Created by Ye Ko Ko Htet on 22/09/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tfLocation: CustomUITextField!
    @IBOutlet weak var tfTitle: CustomUITextField!
    
    @IBOutlet weak var tfDOB: CustomUITextField!
    @IBOutlet weak var tfAD: CustomUITextField!
    
    let datePicker = UIDatePicker()
        
    static let DOB = 1
    static let AD = 2
    
    var selected: Int?
 
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // remove top line and botoom line
        searchBar.backgroundImage = UIImage()
        
        // show bookmark icon in search bar
        searchBar.showsBookmarkButton = true
        
        // replace mic icon instead of bookmark icon
        let micImage = UIImage(systemName: "mic.fill")
        searchBar.setImage(micImage, for: .bookmark, state: .normal)
        
        // insert trigger point for tfDOB
        tfDOB.addTarget(self, action: #selector(onTapDOB), for: .allTouchEvents)
        
        // insert trigger point for tfDOB
        tfAD.addTarget(self, action: #selector(onTapAD), for: .allTouchEvents)
        
    }
    
    func createDatePicker(textField: UITextField) {
        // create Date Picker and insert text field
        datePicker.datePickerMode = .date
        textField.inputView = datePicker
        
        // create toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // create done button
        let btnDone = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(onTapDone))

        // insert done btn to toolbar
        toolbar.setItems([btnDone], animated: true)

        // insert toolbar to textField
        textField.inputAccessoryView = toolbar
    }
    
    @objc func onTapDOB() {
        selected = FormViewController.DOB
        createDatePicker(textField: tfDOB)
    }
    
    @objc func onTapAD() {
        selected = FormViewController.AD
        createDatePicker(textField: tfAD)
    }
    
    @objc func onTapDone() {
        // remove date picker
        self.view.endEditing(true)
        
        // readable date formatt
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
    
        switch selected {
        case FormViewController.DOB:
            // datepicker value insert text field
            tfDOB.text = dateFormatter.string(from: datePicker.date) // string interpolation
            break
        case FormViewController.AD:
            // datepicker value insert text field
            tfAD.text = dateFormatter.string(from: datePicker.date) // string interpolation
            break
        default:
            break
        }
    }
    
}


