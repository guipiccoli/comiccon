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
    var sessions = SessionBank()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "teste") as! SessionTableViewCell
        
        let sessionAtIndexPath = sessions.list[indexPath.row]
        cell.speakerSessionLabel.font = UIFont.systemFont(ofSize: 21, weight: .heavy)
        cell.numberSessionLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        cell.hourSessionLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        cell.smallDescriptionLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        cell.trackLocationLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        cell.bigDescriptionLabel.font = UIFont.systemFont(ofSize: 13.2, weight: .regular)
        
        //falta incluir na model e colocar todos icones
        cell.imageSpeaker.image = UIImage(named: "aragones")
    
        cell.speakerSessionLabel.text = sessionAtIndexPath.speaker
        cell.numberSessionLabel.text = "SESSION \(sessionAtIndexPath.idSession):"
        cell.smallDescriptionLabel.text = sessionAtIndexPath.smallDescription
        cell.smallDescriptionLabel.adjustsFontSizeToFitWidth = true
        cell.bigDescriptionLabel.text = sessionAtIndexPath.bigDescription
        cell.bigDescriptionLabel.sizeToFit()
        cell.trackLocationLabel.text = sessionAtIndexPath.trackLocation
        cell.trackLocationLabel.sizeToFit()
        //cell.createCircle(timeElapsedPercentage: 3/4)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as? SessionTableViewCell)?.createCircle(timeElapsedPercentage: 3/4)

    }
}



extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if cellExpandable {
            cellExpandable = false
            UIView.animate(withDuration: 0.4) {
                tableView.cellForRow(at: self.selectedIndexPath!)!.contentView.backgroundColor = UIColor.init(red: 235.0/255, green: 235.0/255, blue: 235.0/255, alpha: 1.0)
            }
        } else {
            UIView.animate(withDuration: 0.4) {
                tableView.cellForRow(at: indexPath)!.contentView.backgroundColor = UIColor.white
            }
            cellExpandable = true
        }
        selectedIndexPath = indexPath
        tableView.beginUpdates()
        tableView.endUpdates()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if cellExpandable && indexPath == selectedIndexPath {
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 540.3
            return tableView.rowHeight
        } else {
            return 115
        }
    }
    
    
}
