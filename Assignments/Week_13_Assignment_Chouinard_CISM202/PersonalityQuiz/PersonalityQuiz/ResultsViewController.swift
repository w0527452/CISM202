//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Mark Chouinard on 11/27/21.
//

import UIKit

class ResultsViewController: UIViewController {

  @IBOutlet var answerLabel: UILabel!
  @IBOutlet var definitionLabel: UILabel!


  var responses: [Answer]

  init?(coder: NSCoder, responses: [Answer]) {
    self.responses = responses
    super.init(coder: coder)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.hidesBackButton = true

    calcResults()
  }

  func calcResults() {
    let frequency = responses.reduce(into: [AnimalType: Int]() ) {
      (counts, answer) in
      if let existing = counts[answer.type] {
        counts[answer.type] = existing + 1
      } else {
        counts[answer.type] = 1
      }
    }

    let winner = frequency.sorted { $0.1 > $1.1 }.first!.key

    //    print(winner.rawValue)
    //    print(winner.definition)

    answerLabel.text = "\(winner.rawValue)"
    definitionLabel.text = "\(winner.definition)"

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
