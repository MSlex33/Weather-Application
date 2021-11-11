//
//  NewViewController.swift
//  Weather Application
//
//  Created by Alex Popov on 11.11.2021.
//

import UIKit

class NewViewController: UIViewController {

    var cityData: String?
    
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = cityData
    }
    

}
