//
//  ViewController.swift
//  Login
//
//  Created by Mark Chouinard on 11/12/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var userName: UITextField!
  @IBOutlet var passWord: UITextField!

  @IBOutlet var forgotUsernameButton: UIButton!
  @IBOutlet var forgotPasswordButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    // Simplified
    if "forgottenData" == segue.identifier {
      guard let sender = sender as? UIButton else {
        return
      }
      segue.destination.navigationItem.title = sender.titleLabel!.text
    } else {
      segue.destination.navigationItem.title = userName.text
    }

//    switch sender {
//    case forgotPasswordButton:
//      segue.destination.navigationItem.title = sender.titleLabel!.text
//      break
//    case forgotUsernameButton:
//      segue.destination.navigationItem.title = "Forgot Username"
//      break
//    default:
//      segue.destination.navigationItem.title = userName.text
//    }

//    if sender == forgotUsernameButton {
//      segue.destination.navigationItem.title = "forgot username"
//    } else if sender == forgotPasswordButton {
//      segue.destination.navigationItem.title = "forgot password"
//    } else {
//      segue.destination.navigationItem.title = userName.text
//    }

  }

  @IBAction func forgotUsernameTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "forgottenData", sender: sender)
  }

  @IBAction func forgotPasswordTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "forgottenData", sender: sender)
  }


}

