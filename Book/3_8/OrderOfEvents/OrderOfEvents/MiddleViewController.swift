//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Mark Chouinard on 11/17/21.
//

import UIKit

class MiddleViewController: UIViewController {

  @IBOutlet var logLabel: UILabel!
  var eventNumber: Int = 1

  override func viewDidLoad() {
        super.viewDidLoad()

        addEvent(from: "viewDidLoad")
    }

  func addEvent( from: String) {
    if let existing = logLabel.text {
      logLabel.text = "\(existing)\nEvent Number \(eventNumber) was \(from)"
      eventNumber += 1
    }
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    addEvent(from: "viewWillappear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    addEvent(from: "viewDidAppear")
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    addEvent(from: "viewWillDisappear")
  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)

    addEvent(from: "viewDidDisappear")
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
