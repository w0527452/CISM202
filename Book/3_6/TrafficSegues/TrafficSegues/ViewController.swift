//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Mark Chouinard on 11/12/21.
//

import UIKit

class ViewController: UIViewController {


  @IBOutlet var mySwitch: UISwitch!


  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

//  @IBAction func unwindToRed( unwindSegue: UIStoryboardSegue ) {
//
//  }

//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    segue.destination.navigationItem.title = textField.text
//  }

  @IBAction func yellowButtonTapped(_ sender: Any) {
    if mySwitch.isOn {
      performSegue(withIdentifier: "Yellow", sender: nil)
    }
  }


  @IBAction func greenButtonTapped(_ sender: Any) {
    if mySwitch.isOn {
      performSegue(withIdentifier: "Green", sender: nil)
    }
  }
}

