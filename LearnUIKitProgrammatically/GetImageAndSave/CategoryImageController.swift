//
//  CategoryImageController.swift
//  LearnUIKitProgrammatically
//
//  Created by Влад Руденко on 12.07.2022.
//

import UIKit

class CategoryImageViewController: UITableViewController {
    
    let categoriesInDict = UserImage()
    let categoriesOfImage = ["Space", "Animals", "Plant", "Yellow Thinking", "Home Decor and Design"]
    let iconOfImage = ["🌌", "🦫", "🪷", "💛", "🏠"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesOfImage.count
    }
    
    
}
