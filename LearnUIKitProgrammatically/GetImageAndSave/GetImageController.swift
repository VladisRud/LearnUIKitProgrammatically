//
//  GetImageController.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 09.07.2022.
//

import UIKit

class GetImageController: UIViewController {
    
    var categoryImage = ""
    
    var randomImage = UserImage()
    
    override func viewDidLoad() {
        randomImage.loadImage(category: categoryImage)
        
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
        button.addTarget(self, action: #selector(getImage), for: .touchUpInside)
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
    
    
    @objc func getImage() {
//        let systemImage = ["trash", "folder", "pencil.tip", "calendar"]
//        userImage.image = UIImage(systemName: systemImage[Int.random(in: 0...3)])
        
        randomImage.loadImage(category: categoryImage)
        
        //MARK: - Получение фотографии по ссылке

//        let userPhoneDispaySizeHeight = Int(UIScreen.main.bounds.height)
//
//        let userPhoneDispaySizeWidth = Int(UIScreen.main.bounds.width)

        // 1 - Получаем API
        let API = "\(randomImage.urlPhoto)"
        
        // 2 - Создание URL
        guard let apiURL = URL(string: API) else {
            fatalError("WTFWTFWTFWTFWTFWTF")
        }

        // 3 - Инициализать сессию
        let session = URLSession(configuration: .default)

        // 4 - Создать запрос dataTask
        let task = session.dataTask(with: apiURL) { data, response, error in
            // 5 - Обработать полученные данные
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.userImage.image = UIImage(data: data)
            }
        }

        // 6 - Запустить запрос
        task.resume()
        
    }
    
    @objc func saveImage() {
        
    }
    
    
    
}


