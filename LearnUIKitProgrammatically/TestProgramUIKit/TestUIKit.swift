//
//  TestUIKit.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 12.07.2022.
//

import UIKit

class TestUIKit: UIViewController {
    
    let firstView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        return view
    }()
    
    let secondView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        return view
    }()
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TEST"
        label.font = .systemFont(ofSize: 15.5)
        label.textColor = .white
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "WORLD"
        label.font = .systemFont(ofSize: 15.5)
        label.textColor = .white
        return label
    }()
    
    let firstButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(firstButton(_:)), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        
        view.addSubview(firstView)
        view.addSubview(secondView)
        
//        firstView.addSubview(firstLabel)
        firstView.addSubview(firstButton)
        secondView.addSubview(secondLabel)
        
        setUpConstrains()
        
        
    }
    
    func setUpConstrains() {
        
        firstView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        firstView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        firstView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: view.frame.height / 2).isActive = true
        
        secondView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        secondView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor).isActive = true
        secondView.heightAnchor.constraint(equalToConstant: view.frame.height / 2).isActive = true
        
//        firstLabel.centerYAnchor.constraint(equalTo: firstView.centerYAnchor).isActive = true
//        firstLabel.centerXAnchor.constraint(equalTo: firstView.centerXAnchor).isActive = true
        
        firstButton.centerYAnchor.constraint(equalTo: firstView.centerYAnchor).isActive = true
        firstButton.centerXAnchor.constraint(equalTo: firstView.centerXAnchor).isActive = true
        
        secondLabel.centerYAnchor.constraint(equalTo: secondView.centerYAnchor).isActive = true
        secondLabel.centerXAnchor.constraint(equalTo: secondView.centerXAnchor).isActive = true
    }
    
    @objc func firstButton(_ sender: Any) {
        let imageController = GetImageController()
        navigationController?.pushViewController(imageController, animated: true)
    }

}


