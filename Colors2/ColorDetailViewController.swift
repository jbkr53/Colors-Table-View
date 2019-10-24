//
//  ColorDetailViewController.swift
//  Colors2
//
//  Created by James Kirkland on 10/24/19.
//  Copyright © 2019 James Kirkland. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: Color?

    @IBOutlet weak var colornamelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colornamelabel.text = color?.name
        
        self.view.backgroundColor = color?.color
        self.title = color?.name

        
        // Do any additional setup after loading the view.
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
