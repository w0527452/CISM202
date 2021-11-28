//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by Mark Chouinard on 11/17/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      print("SecondViewController viewDidLoad")
    }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    print("SecondViewController viewWillAppear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    print("SecondViewController viewDidAppear")
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    print("SecondViewController viewWillDisappear")
  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)

    print("SecondViewController viewDidDisappear")
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
