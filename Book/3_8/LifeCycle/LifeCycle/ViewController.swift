//
//  ViewController.swift
//  LifeCycle
//
//  Created by Mark Chouinard on 11/17/21.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    print("ViewController viewDidLoad")
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    print("ViewController viewWillAppear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    print("ViewController viewDidAppear")
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    print("ViewController viewWillDisappear")
  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)

    print("ViewController viewDidDisappear")
  }
}

