//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Mark Chouinard on 11/17/21.
//

import UIKit

class RedViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    tabBarItem.badgeValue = "?"
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    tabBarItem.badgeValue = nil
  }


}

