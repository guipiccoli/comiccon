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
}
