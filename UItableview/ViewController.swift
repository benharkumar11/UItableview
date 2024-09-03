//
//  ViewController.swift
//  UItableview
//
//  Created by Benhar Kumar on 8/29/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTVC", for: indexPath)
        let number = indexPath.row + 1
        
        cell.textLabel?.text = "\(number)"
        
        if number % 2 == 0 && number % 5 == 0 {
            cell.backgroundColor = UIColor.yellow
        } else if number % 2 == 0 {
            cell.backgroundColor = UIColor.green
        } else if number % 5 == 0 {
            cell.backgroundColor = UIColor.red
        }
        else {
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        
        performSegue(withIdentifier: "showDetail", sender: self)
        if let selectedCell = tableView.cellForRow(at: indexPath) {
            detailVC.color = selectedCell.backgroundColor
        }
        
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
