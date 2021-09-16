//
//  ViewController.swift
//  Light
//
//  Created by Mark Chouinard on 9/15/21.
//

import UIKit

class ViewController: UIViewController {
  var light = true;

  @IBOutlet var mainButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    mainButton.setTitle("", for: .normal)
    updateUI()
  }

  fileprivate func updateUI() {
    view.backgroundColor = light ? .white : .blue
  }

  @IBAction func onButtonPress(_ sender: Any) {

    light.toggle()
    updateUI()
  }

}

