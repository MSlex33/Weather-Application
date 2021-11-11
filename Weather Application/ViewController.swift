//
//  ViewController.swift
//  Weather Application
//
//  Created by Alex Popov on 11.11.2021.
//

import UIKit


let cityArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNewViewController" {
            let selectedCellCityRow = tableView.indexPathForSelectedRow!.row
            (segue.destination as! NewViewController).cityData = cityArray[selectedCellCityRow]
            
        }
        
    }

}




extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToNewViewController", sender: self)
    }
    
}





extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "city", for: indexPath)
        cell.textLabel?.text = cityArray[indexPath.row]
        
        return cell
    }
    
    
}
