//
//  ViewController.swift
//  Prophecy
//
//  Created by Serhii.Lomov on 12.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var fateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getFate() {
        let name = nameField.text ?? ""
        let fateText = FateGenerator().fate(name: name)
        let fateEmoji = Emojinator().emojinate(string: fateText)
        fateLabel.text = fateEmoji
    }
}

