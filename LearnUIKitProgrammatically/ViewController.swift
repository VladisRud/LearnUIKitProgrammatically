//
//  ViewController.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 08.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let firstView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = true
        view.sizeToFit()
        return view
    }()
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST"
        label.font = .systemFont(ofSize: 15.5)
        label.textColor = .white
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(firstView)
        
        
    }

}

