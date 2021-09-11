//
//  ViewController.swift
//  GettingStarted
//
//  Created by Mark Chouinard on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    navigationController?.title = "Debugging"
    var names = ["Tammy", "Cole"]
    names.removeFirst()
    names.removeFirst()

  }


}

