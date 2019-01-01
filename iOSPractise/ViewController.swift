//
//  ViewController.swift
//  iOSPractise
//
//  Created by Bob Chang on 1/1/19.
//  Copyright © 2019 BobChang. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let features: [PractiseFeature] = [.visualEffect]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return features.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.id, for: indexPath) as! CustomCell
        cell.config(title: features[indexPath.item].title)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var nextViewController: UIViewController
        switch features[indexPath.item] {
            
        case .visualEffect:
            nextViewController = VisualEffectVC()
            
        }
        
        nextViewController.title = features[indexPath.item].title
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}

