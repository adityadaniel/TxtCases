//
//  ViewController.swift
//  TxtCases
//
//  Created by Daniel Aditya Istyana on 25/07/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upperCaseTextField: UITextField!
    @IBOutlet weak var lowerCaseTextField: UITextField!
    @IBOutlet weak var titleCaseTextField: UITextField!
    
    @IBOutlet weak var initialTextField: ADTextField!
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Change Case"
        
        initialTextField.borderStyle = .roundedRect
        convertButton.layer.cornerRadius = 8
    }

    @objc func copyToClipboard() {
        print("touched")
    }
    
    @IBAction func converButtonTapped(_ sender: UIButton) {
        guard let initialText = initialTextField.text else { return }
        upperCaseTextField.text = makeUpperCase(text: initialText)
        lowerCaseTextField.text = makeLowerCase(text: initialText)
        titleCaseTextField.text = makeTitleCase(text: initialText)
        view.makeToast(message: "Text Converted", duration: 0.75, position: HRToastPositionDefault as AnyObject)
    }
    
    
    func makeUpperCase(text: String) -> String {
        let uppercasedText = text.uppercased()
        return uppercasedText
    }
    
    func makeLowerCase(text: String) -> String {
        let lowerCasedText = text.lowercased()
        return lowerCasedText
    }
    
    func makeTitleCase(text: String) -> String {
        let capitalizedText = text.capitalized(with: Locale(identifier: "id_ID"))
        return capitalizedText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

