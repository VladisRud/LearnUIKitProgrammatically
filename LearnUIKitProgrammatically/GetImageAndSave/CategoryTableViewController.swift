//
//  CategoryTableViewController.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 17.07.2022.
//

import UIKit

class CategoryTableViewController: UIViewController {
    
    let categoriesInDict = UserImage()
    let categoriesOfImage = ["Space", "Animals", "Plant", "Yellow Thinking", "Home Decor and Design"]
    let iconOfImage = ["🌌", "🦫", "🪷", "💛", "🏠"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        view.addSubview(tableView)

        setUpConstrains()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    //MARK: - View

    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        table.register(CategoryTableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    func setUpConstrains() {
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }

}

extension CategoryTableViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categoriesOfImage.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cell2 = UITableViewCell(style: .value1, reuseIdentifier: "cell")

        cell2.textLabel?.text = categoriesOfImage[indexPath.row]
        cell2.detailTextLabel?.text = iconOfImage[indexPath.row]

        return cell2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let image = GetImageController()
        
        image.categoryImage = categoriesOfImage[indexPath.row]
        
        navigationController?.pushViewController(image, animated: true)
        
    }
    
    
}


