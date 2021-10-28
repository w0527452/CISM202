//
//  ViewController.swift
//  ApplePie
//
//  Created by Mark Chouinard on 10/28/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var correctWordLabel: UILabel!
  @IBOutlet var scoreLabel: UILabel!
  @IBOutlet var letterButtons: [UIButton]!
  @IBOutlet var treeImageView: UIImageView!


  var currentGame: Game!
  var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
  let incorrectMovesAllowed = 7
  var totalWins = 0
  var totalLosses = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    newRound()
  }


  @IBAction func letterPressed(_ sender: UIButton) {
    let letterString = sender.title(for: .normal )
  }


  func newRound() {
    let newWord = listOfWords.randomElement()!
    currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
    updateUI()
  }

  func updateUI() {
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    correctWordLabel.text = currentGame.formattedWord
  }

}

