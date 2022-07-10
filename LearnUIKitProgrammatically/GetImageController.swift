//
//  GetImageController.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 09.07.2022.
//

import UIKit

class GetImageController: UIViewController {
    
    override func viewDidLoad() {
        view.addSubview(labelView)
        labelView.addSubview(nameLable)
        
        view.addSubview(userImage)
        
        view.addSubview(buttonView)
        buttonView.addSubview(buttonStack)
        buttonStack.addArrangedSubview(getButton)
        buttonStack.addArrangedSubview(saveButton)
        
        setUpConstrains()
    }
    
    //MARK: - Create Element
    let labelView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "GetImageAndSave"
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 25.0)
        return label
    }()
    
    let imageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let userImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "pencil.tip")
        return image
    }()
    
    let buttonView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 100
        return stack
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Get", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 25)
        return button
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Save", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 25)
        return button
    }()
    
    
    
    //MARK: - Create contrains
    func setUpConstrains() {
        // label
        labelView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        labelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        labelView.heightAnchor.constraint(equalToConstant: view.frame.height / 6).isActive = true
        nameLable.centerXAnchor.constraint(equalTo: labelView.centerXAnchor).isActive = true
        nameLable.centerYAnchor.constraint(equalTo: labelView.centerYAnchor).isActive = true
        
        // image
        userImage.topAnchor.constraint(equalTo: labelView.bottomAnchor, constant: 20).isActive = true
        userImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        userImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 15).isActive = true
        userImage.heightAnchor.constraint(equalToConstant: view.frame.height / 2).isActive = true
        
        // button
        buttonView.topAnchor.constraint(equalTo: userImage.bottomAnchor).isActive = true
        buttonView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        buttonView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        buttonView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        buttonStack.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor).isActive = true
        buttonStack.centerYAnchor.constraint(equalTo: buttonView.centerYAnchor).isActive = true
        getButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        getButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        saveButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    
}
