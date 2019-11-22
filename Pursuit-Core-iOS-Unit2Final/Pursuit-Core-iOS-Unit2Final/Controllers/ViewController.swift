//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var crayons = [Crayon](){
        didSet{
            tableView.reloadData()
        }
    }
    @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    tableView.dataSource = self
    loadData()
  }
    func loadData() {
        crayons = Crayon.allTheCrayons
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let detailedViewController = segue.destination as? DetailedViewController,
                 let indexPath = tableView.indexPathForSelectedRow else{
                fatalError("Failed to get indexPath and detailViewController!")
            }
            let crayon = crayons[indexPath.row]
        detailedViewController.crayon = crayon
        detailedViewController.redSlider?.value = Float(crayon.red)
        detailedViewController.greenSlider?.value = Float(crayon.green)
        detailedViewController.blueSlider?.value = Float(crayon.blue)
        }
    }
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        crayons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor(red: CGFloat(crayon.red/255)
            , green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255
        ), alpha: 1.0)
        return cell
    }
}
