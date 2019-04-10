//
//  ViewController.swift
//  Comic-Con
//
//  Created by Guilherme Piccoli on 05/04/19.
//  Copyright © 2019 Guilherme Piccoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet var day1btn: UIButton!
    @IBOutlet var day2btn: UIButton!
    @IBOutlet var day4btn: UIButton!
    @IBOutlet var day3btn: UIButton!

    
    @IBOutlet weak var tableView: UITableView!
    private var cellExpandable: Bool = false
    var selectedIndexPath: IndexPath?
    var sessions = SessionBank()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "bgnavbar"), for: .default)
        
        
        day1btn.titleLabel?.numberOfLines = 2
        day1btn.titleLabel?.textAlignment = .center
        day2btn.titleLabel?.numberOfLines = 2
        day2btn.titleLabel?.textAlignment = .center
        day3btn.titleLabel?.numberOfLines = 2
        day3btn.titleLabel?.textAlignment = .center
        day4btn.titleLabel?.numberOfLines = 2
        day4btn.titleLabel?.textAlignment = .center
        
        day1btn.setTitle("April \n10", for: .normal)
        day2btn.setTitle("April \n11", for: .normal)
        day3btn.setTitle("April \n12", for: .normal)
        day4btn.setTitle("April \n13", for: .normal)

        self.tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    @IBAction func favoriteButton(_ sender: UIButton) {
        let disable = UIImage(named: "star_1")
        let enable = UIImage(named: "star_2")

        
        if sender.image(for: .normal) == disable {
            sender.setImage(enable, for: .normal)
        }
        else {
            sender.setImage(disable, for: .normal)
        }
        
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "teste") as! SessionTableViewCell
        
        cell.clear()
        let sessionAtIndexPath = sessions.list[indexPath.row]
        cell.speakerSessionLabel.font = UIFont.systemFont(ofSize: 21, weight: .heavy)
        cell.numberSessionLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        cell.hourSessionLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        cell.smallDescriptionLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        cell.trackLocationLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        cell.bigDescriptionLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
 
        let formatter = DateFormatter()
        
        formatter.dateFormat = "hh:mm"
        let timeStart = formatter.string(from: sessionAtIndexPath.sessionStart)
        
        formatter.dateFormat = "hh:mm"
        let timeEnd = formatter.string(from: sessionAtIndexPath.sessionEnds)
        
        
        cell.hourSessionLabel.text = "WED \(timeStart)PM - \(timeEnd)PM"
        cell.imageSpeaker.image = UIImage(named: sessionAtIndexPath.imageSpeaker)
        cell.speakerSessionLabel.text = sessionAtIndexPath.speaker
        cell.numberSessionLabel.text = "SESSION \(sessionAtIndexPath.idSession):"
        cell.smallDescriptionLabel.text = sessionAtIndexPath.smallDescription
        //cell.smallDescriptionLabel.adjustsFontSizeToFitWidth = true
        cell.bigDescriptionLabel.text = sessionAtIndexPath.bigDescription
       //cell.bigDescriptionLabel.sizeToFit()
        cell.trackLocationLabel.text = sessionAtIndexPath.trackLocation
        cell.trackLocationLabel.sizeToFit()
        
        switch sessionAtIndexPath.stageNumber {
        case 1:
            cell.locationImage.image = UIImage(named: "stage_1")
        case 2:
        cell.locationImage.image = UIImage(named: "stage_2")
        case 3:
        cell.locationImage.image = UIImage(named: "stage_3")
        case 4:
        cell.locationImage.image = UIImage(named: "stage_4")
        default:
            cell.locationImage.image = nil
        }
        
        let lastSession = sessions.list[max(indexPath.row - 1, 0)]
        let nextSession = sessions.list[min(indexPath.row + 1, sessions.list.count - 1)]
        
        var upperBarPercentage: Double = 0
        var bottomBarPercentage: Double = 0
        
        let endLast = lastSession.sessionEnds
        let end = sessionAtIndexPath.sessionEnds
        let begin = sessionAtIndexPath.sessionStart
        let beginNext = nextSession.sessionStart
        let now = Date()
        
        let upperBarUntil = now.timeIntervalSince1970 - endLast.timeIntervalSince1970
        let upperBarTotal = begin.timeIntervalSince1970 - endLast.timeIntervalSince1970
        upperBarPercentage = 1 - ((upperBarTotal - upperBarUntil)/upperBarTotal)
        if  (sessionAtIndexPath.idSession != 1) {
            //cell.createUpperBar(timeElapsedUpper: upperBarPercentage)
        }
        
        
        let roundBarUntil = now.timeIntervalSince1970 - begin.timeIntervalSince1970
        let roundBarTotal = end.timeIntervalSince1970 - begin.timeIntervalSince1970
        let roundBarPercentage = 1 - ((roundBarTotal - roundBarUntil)/roundBarTotal)
        print(indexPath.row)
        print(sessionAtIndexPath)
        cell.createCircle(timeElapsedPercentage: roundBarPercentage)
        
        
        
        if end.timeIntervalSince1970 < now.timeIntervalSince1970{
            bottomBarPercentage = 1
        }
        else{
            bottomBarPercentage = 0
        }
        
        
        //cell.createBottomBar(timeElapsedBottom: bottomBarPercentage)
        
        return cell
    }
    

}



extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if cellExpandable {
            cellExpandable = false
            UIView.animate(withDuration: 0.4) {
                if tableView.cellForRow(at: self.selectedIndexPath!) != nil {
                    tableView.cellForRow(at: self.selectedIndexPath!)!.contentView.backgroundColor = UIColor.init(red: 235.0/255, green: 235.0/255, blue: 235.0/255, alpha: 1.0)
                }
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
