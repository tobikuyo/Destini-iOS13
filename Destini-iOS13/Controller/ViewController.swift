//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateStory()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        guard let sender = sender.currentTitle else { return }
        storyBrain.nextStory(sender)
        
        updateStory()
    }
    
    func updateStory() {
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.firstChoice(), for: .normal)
        choice2Button.setTitle(storyBrain.secondChoice(), for: .normal)
    }
}
