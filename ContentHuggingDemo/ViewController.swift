//
//  ViewController.swift
//  ContentHuggingDemo
//
//  Created by Ganesh on 19/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .cyan
        setupViews()
    }
    
    func setupViews() {
        let label = makeLabel(withText: "Name")
        let textField = makeTextField(withPlaceholder: "Enter your name")
        
        view.addSubview(label)
        view.addSubview(textField)
        
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        textField.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 8).isActive = true
        label.firstBaselineAnchor.constraint(equalTo: textField.firstBaselineAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        label.setContentHuggingPriority(.init(rawValue: 251), for: .horizontal)
    }

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }

    func makeTextField(withPlaceholder text: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .purple
        return textField
    }
    
}

