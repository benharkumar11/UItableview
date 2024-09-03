//
//  DetailViewController.swift
//  UItableview
//
//  Created by Benhar Kumar on 9/3/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        view.backgroundColor = color ?? UIColor.white
    }
}
