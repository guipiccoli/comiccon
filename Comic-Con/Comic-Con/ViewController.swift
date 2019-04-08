//
//  ViewController.swift
//  Comic-Con
//
//  Created by Guilherme Piccoli on 05/04/19.
//  Copyright © 2019 Guilherme Piccoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var cellExpandable: Bool = false
    var selectedIndexPath: IndexPath?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        tableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "teste") as! UITableViewCell
        return cell
    }
}



extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        
        if cellExpandable {
            cellExpandable = false
        } else {
            cellExpandable = true
        }
        tableView.beginUpdates()
        tableView.endUpdates()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if cellExpandable && indexPath == selectedIndexPath {
            return 540.3
        } else {
            return 115
        }
    }
    
    
}
