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
    @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var colapsedView: UIView!
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
    
    
    
    func clear() {
        [upperView, colapsedView, bottomView]
            .compactMap{ $0 }
            .forEach{ $0.layer.sublayers?
                .forEach{ $0.removeFromSuperlayer() } }
    }
    func createUpperBar(timeElapsedUpper: Double) {
        createRect(rectView: upperView, timeElapsedPercentage: timeElapsedUpper)
    }
    
    func createBottomBar(timeElapsedBottom: Double) {
        createRect(rectView: bottomView, timeElapsedPercentage: timeElapsedBottom)
        createRect(rectView: colapsedView, timeElapsedPercentage: timeElapsedBottom)
    }
    
    func createRect(rectView: UIView, timeElapsedPercentage: Double){
//        rectView.layer.sublayers = nil
//        rectView.layer.sublayers?.forEach{ $0.removeFromSuperlayer() }
        rectView.setNeedsDisplay()
        let line = CAShapeLayer()
        let line2 = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rectView.frame.size.width/2, y: 0))
        path.addLine(to: CGPoint(x: rectView.frame.size.width/2, y: rectView.frame.size.height))
        line.path = path.cgPath
        line.strokeColor = UIColor(red: 89/255, green: 46/255, blue: 101/255, alpha: 1.0).cgColor
        line.fillColor = UIColor.clear.cgColor
        line.lineWidth = 7
        line.strokeStart = 0
        line.strokeEnd  = CGFloat(timeElapsedPercentage)
        rectView.layer.addSublayer(line)
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: rectView.frame.size.width/2, y: rectView.frame.size.height))
        path2.addLine(to: CGPoint(x: rectView.frame.size.width/2, y: 0))
        
        line2.path = path2.cgPath
        line2.strokeColor = UIColor(red: 223/255, green: 187/255, blue: 20/255, alpha: 1.0).cgColor
        line2.fillColor = UIColor.clear.cgColor
        line2.lineWidth = 7
        line2.strokeStart = 0
        line2.strokeEnd  = CGFloat(1 - timeElapsedPercentage)
        rectView.layer.addSublayer(line2)
    }
    
    
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
        semiCircleLayer.lineWidth = 8
        semiCircleLayer.strokeStart = 0
        semiCircleLayer.strokeEnd  = CGFloat(timeElapsedPercentage)
        self.imageLayer.layer.addSublayer(semiCircleLayer)
        
        
        semiCircleLayer2.path = circlePath2.cgPath
        semiCircleLayer2.strokeColor = UIColor(red: 89/255, green: 46/255, blue: 101/255, alpha: 1.0).cgColor
        semiCircleLayer2.fillColor = UIColor.clear.cgColor
        semiCircleLayer2.lineWidth = 8
        semiCircleLayer2.strokeStart = 0
        semiCircleLayer2.strokeEnd  = CGFloat(timeElapsedPercentage)
        self.imageLayer.layer.addSublayer(semiCircleLayer2)
        
        semiCircleLayer3.path = circlePath3.cgPath
        semiCircleLayer3.strokeColor = UIColor(red: 223/255, green: 187/255, blue: 20/255, alpha: 1.0).cgColor
        semiCircleLayer3.fillColor = UIColor.clear.cgColor
        semiCircleLayer3.lineWidth = 8
        semiCircleLayer3.strokeStart = 0
        semiCircleLayer3.strokeEnd  = CGFloat( 1 - timeElapsedPercentage )
        self.imageLayer.layer.addSublayer(semiCircleLayer3)
        
        semiCircleLayer4.path = circlePath4.cgPath
        semiCircleLayer4.strokeColor = UIColor(red: 223/255, green: 187/255, blue: 20/255, alpha: 1.0).cgColor
        semiCircleLayer4.fillColor = UIColor.clear.cgColor
        semiCircleLayer4.lineWidth = 8
        semiCircleLayer4.strokeStart = 0
        semiCircleLayer4.strokeEnd  = CGFloat( 1 - timeElapsedPercentage )
        self.imageLayer.layer.addSublayer(semiCircleLayer4)
        
    }
}
