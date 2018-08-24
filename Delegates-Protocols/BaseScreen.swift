//
//  BaseScreen.swift
//  Delegates-Protocols
//
//  Created by Sean Allen on 5/20/17.
//  Copyright © 2017 Sean Allen. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 2
    }
    
    // MARK: - Actions

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}

// MARK: - Extesnion

extension BaseScreen: SideSelectionDelegate {
    
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
}
