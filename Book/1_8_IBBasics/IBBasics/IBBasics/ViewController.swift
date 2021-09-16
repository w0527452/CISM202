//
//  ViewController.swift
//  IBBasics
//
//  Created by Mark Chouinard on 9/15/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var myButton: UIButton!
  @IBOutlet var myLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    myButton.setTitleColor(.red, for: .normal)
  }

  @IBAction func buttonPressed(_ sender: Any) {
    myLabel.text = "Custom text"
  }

}

