//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Mark Chouinard on 10/21/21.
//

import UIKit

class ViewController: UIViewController {


  @IBOutlet var label: UILabel!
  @IBOutlet var button: UIButton!
  @IBOutlet var toggle: UISwitch!
  @IBOutlet var slider: UISlider!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    print("button tapped")
    print( "slider value is \(slider.value)")
    print( toggle.isOn ? "Switch is on" : "Switch is off")
  }
  @IBAction func switchToggled(_ sender: UISwitch) {
    print( sender.isOn ? "ON" : "OFF")
  }

  @IBAction func sliderMoved(_ sender: UISlider) {
    print(sender.value)
  }

  @IBAction func kbRetunTapped(_ sender: UITextField) {
    if let txt = sender.text {
      label.text = txt
    }
  }

  @IBAction func textChanged(_ sender: UITextField) {
    if let txt = sender.text {
      print(txt)
    }
  }

  @IBAction func respondToTapGesture( _ sender: UITapGestureRecognizer ) {
    let location = sender.location(in: view)
    print(location)
  }

}

