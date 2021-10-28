//
//  ViewController.swift
//  TwoButtons
//
//  Created by Mark Chouinard on 10/22/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var setButton: UIButton!
  @IBOutlet var clearButton: UIButton!
  @IBOutlet var txtField: UITextField!
  @IBOutlet var txtLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
//    txtLabel.baselineAdjustment = .none
  }

  @IBAction func setButtonTapped(_ sender: UIButton) {
    txtLabel.text = txtField.text;
    txtField.text = ""
  }


  @IBAction func clearButtonTapped(_ sender: UIButton) {
    txtLabel.text = ""
    txtField.text = ""
  }

}

