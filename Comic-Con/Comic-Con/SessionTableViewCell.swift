//
//  SessionTableViewCell.swift
//  Comic-Con
//
//  Created by Guilherme Piccoli on 09/04/19.
//  Copyright © 2019 Guilherme Piccoli. All rights reserved.
//

import UIKit

class SessionTableViewCell: UITableViewCell {

    //check
    @IBOutlet weak var imageLayer: UIView!
    
    @IBOutlet var imageSpeaker: BorderView!
    
    @IBOutlet var numberSessionLabel: UILabel!
    @IBOutlet var hourSessionLabel: UILabel!
    @IBOutlet var speakerSessionLabel: UILabel!
    @IBOutlet var smallDescriptionLabel: UILabel!
    @IBOutlet var bigDescriptionLabel: UILabel!
    @IBOutlet var trackLocationLabel: UILabel!
    @IBOutlet var locationImage: UIImageView!
    @IBOutlet var arrowButton: UIButton!
    @IBOutlet var favoriteButton: UIButton!
    
    
    
    func createCircle(timeElapsedPercentage: Double) {
        
        let semiCircleLayer   = CAShapeLayer()
        let semiCircleLayer2   = CAShapeLayer()
        let semiCircleLayer3   = CAShapeLayer()
        let semiCircleLayer4   = CAShapeLayer()
        
        let center = CGPoint (x: self.imageLayer.frame.size.width / 2, y: self.imageLayer.frame.size.height / 2)
        let circleRadius = self.imageLayer.frame.size.width / 2
        let circlePath = UIBezierPath(arcCenter: center, radius: circleRadius, startAngle: CGFloat( -Double.pi/2 ), endAngle: CGFloat( Double.pi/2 ), clockwise: true)
        let circlePath2 = UIBezierPath(arcCenter: center, radius: circleRadius, startAngle: CGFloat( -Double.pi/2 ), endAngle: CGFloat( Double.pi/2 ), clockwise: false)
        let circlePath3 = UIBezierPath(arcCenter: center, radius: circleRadius, startAngle: CGFloat( Double.pi/2 ), endAngle: CGFloat( -Double.pi/2 ), clockwise: true)
        let circlePath4 = UIBezierPath(arcCenter: center, radius: circleRadius, startAngle: CGFloat( Double.pi/2 ), endAngle: CGFloat( -Double.pi/2 ), clockwise: false)
        
        
        semiCircleLayer.path = circlePath.cgPath
        semiCircleLayer.strokeColor = UIColor(red: 89/255, green: 46/255, blue: 101/255, alpha: 1.0).cgColor
        semiCircleLayer.fillColor = UIColor.clear.cgColor
        semiCircleLayer.lineWidth = 6
        semiCircleLayer.strokeStart = 0
        semiCircleLayer.strokeEnd  = CGFloat(timeElapsedPercentage)
        self.imageLayer.layer.addSublayer(semiCircleLayer)
        
        
        semiCircleLayer2.path = circlePath2.cgPath
        semiCircleLayer2.strokeColor = UIColor(red: 89/255, green: 46/255, blue: 101/255, alpha: 1.0).cgColor
        semiCircleLayer2.fillColor = UIColor.clear.cgColor
        semiCircleLayer2.lineWidth = 6
        semiCircleLayer2.strokeStart = 0
        semiCircleLayer2.strokeEnd  = CGFloat(timeElapsedPercentage)
        self.imageLayer.layer.addSublayer(semiCircleLayer2)
        
        semiCircleLayer3.path = circlePath3.cgPath
        semiCircleLayer3.strokeColor = UIColor(red: 223/255, green: 187/255, blue: 20/255, alpha: 1.0).cgColor
        semiCircleLayer3.fillColor = UIColor.clear.cgColor
        semiCircleLayer3.lineWidth = 6
        semiCircleLayer3.strokeStart = 0
        semiCircleLayer3.strokeEnd  = CGFloat( 1 - timeElapsedPercentage )
        self.imageLayer.layer.addSublayer(semiCircleLayer3)
        
        semiCircleLayer4.path = circlePath4.cgPath
        semiCircleLayer4.strokeColor = UIColor(red: 223/255, green: 187/255, blue: 20/255, alpha: 1.0).cgColor
        semiCircleLayer4.fillColor = UIColor.clear.cgColor
        semiCircleLayer4.lineWidth = 6
        semiCircleLayer4.strokeStart = 0
        semiCircleLayer4.strokeEnd  = CGFloat( 1 - timeElapsedPercentage )
        self.imageLayer.layer.addSublayer(semiCircleLayer4)
        
    }
}
