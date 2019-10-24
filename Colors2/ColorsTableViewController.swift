//
//  ColorsTableViewController.swift
//  Colors2
//
//  Created by James Kirkland on 10/4/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    //var Colors = ["red","orange","yellow","green","blue","purple","brown"]
    var colors = [Color(name: "red", color: UIColor.red), Color(name: "orange", color: UIColor.orange), Color(name: "yellow", color: UIColor.yellow), Color(name: "green", color: UIColor.green), Color(name: "blue", color: UIColor.blue), Color(name: "purple", color: UIColor.purple), Color(name: "brown", color: UIColor.brown)]
    
    @IBOutlet weak var colorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Colors"
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].color
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row
            {
            destination.color = colors[row]
            
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
