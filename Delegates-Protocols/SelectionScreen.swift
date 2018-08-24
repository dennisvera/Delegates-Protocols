//
//  SelectionScreen.swift
//  Delegates-Protocols
//
//  Created by Sean Allen on 5/20/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//

import UIKit

// MARK: - Prototcol

protocol SideSelectionDelegate {
    
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    // MARK: - Properties
    
    var selectionDelegate: SideSelectionDelegate!
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions

    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
}
