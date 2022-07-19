//
//  CategoryTableViewController.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 17.07.2022.
//

import UIKit

class CategoryTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    private let myArray: NSArray = ["First","Second","Third"]
       private var myTableView: UITableView!

       override func viewDidLoad() {
           super.viewDidLoad()

           let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
           let displayWidth: CGFloat = self.view.frame.width
           let displayHeight: CGFloat = self.view.frame.height

           myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
           myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
           myTableView.dataSource = self
           myTableView.delegate = self
           self.view.addSubview(myTableView)
       }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           print("Num: \(indexPath.row)")
           print("Value: \(myArray[indexPath.row])")
       }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return myArray.count
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
           cell.textLabel!.text = "\(myArray[indexPath.row])"
           return cell
       }
   }
    
//    let categoriesInDict = UserImage()
//    let categoriesOfImage = ["Space", "Animals", "Plant", "Yellow Thinking", "Home Decor and Design"]
//    let iconOfImage = ["🌌", "🦫", "🪷", "💛", "🏠"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        tableView.addSubview(table)
//
//        setUpConstrains()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }
//
//    //MARK: - View
//
//    let viewForTable: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .black
//        return view
//    }()
//
//    let table: UITableView = {
//        let table = UITableView()
//        table.translatesAutoresizingMaskIntoConstraints = false
//        table.dequeueReusableCell(withIdentifier: "reuseIdentifier")
//        return table
//    }()
//
//
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return categoriesOfImage.count
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        cell.textLabel?.text = categoriesOfImage[indexPath.row]
//
//        return cell
//    }
//
//    func setUpConstrains() {
////        viewForTable.topAnchor.constraint(equalTo: tableView.topAnchor).isActive = true
////        viewForTable.leftAnchor.constraint(equalTo: tableView.leftAnchor).isActive = true
////        viewForTable.rightAnchor.constraint(equalTo: table.rightAnchor).isActive = true
////        viewForTable.heightAnchor.constraint(equalToConstant: tableView.frame.height / 2).isActive = true
//
//        table.topAnchor.constraint(equalTo: tableView.topAnchor).isActive = true
//        table.leftAnchor.constraint(equalTo: tableView.leftAnchor).isActive = true
//        table.rightAnchor.constraint(equalTo: tableView.rightAnchor).isActive = true
//        table.bottomAnchor.constraint(equalTo: tableView.bottomAnchor).isActive = true
//    }

//}


