//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var indexNumber = 0
    
    let stories = [Story(title: "You see a fork in the road.", choice1: "Take a left", choice2: "Take a right"),
                   Story(title: "You see s tiger.", choice1: "Shout for help", choice2: "Play dead"),
                   Story(title: "You find a treasure chest.", choice1: "Open it", choice2: "Check for traps")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[indexNumber].title
        choice1Button.setTitle(stories[indexNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[indexNumber].choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: Any) {
    }
    
}

