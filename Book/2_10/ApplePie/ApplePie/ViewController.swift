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
  var totalWins = 0 {
    didSet {
      newRound()
    }
  }
  var totalLosses = 0 {
    didSet {
      newRound()
    }
  }
  var firstRound: Bool = true
  var newGameAlert: UIAlertController!

  override func viewDidLoad() {
    super.viewDidLoad()
    newGameAlert = UIAlertController(title: "New Game", message: "Play again?", preferredStyle: .alert)
    newGameAlert.addAction( UIAlertAction(title: "Yes", style: .default, handler: { action in
      self.startNewRound()
    } ))
    newGameAlert.addAction( UIAlertAction(title: "No", style: .cancel, handler: nil ))
    newRound()
  }


  @IBAction func letterPressed(_ sender: UIButton) {
    sender.isEnabled = false
//    let letterString = sender.title(for: .normal)!
    let letterString = sender.titleLabel!.text!
    let letter = Character(letterString.lowercased())
    currentGame.guess(letter: letter)
    updateGameState()
  }


  func newRound() {
    if !firstRound {
      updateUI()
      self.present( newGameAlert, animated: true )
    } else {
      firstRound = false
      startNewRound()
    }

  }

  func startNewRound() {
    enableLetterBtns( true )
    let newWord = listOfWords.randomElement()!
    currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
    updateUI()
  }

  func updateUI() {
    var letters = [String]()
    for letter in currentGame.formattedWord {
      letters.append(String(letter))
    }
    let wordWithSpace = letters.joined(separator: " " )
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    correctWordLabel.text = wordWithSpace
  }

  func updateGameState() {
    if currentGame.incorrectMovesRemaining == 0 {
      totalLosses += 1
    } else if currentGame.word == currentGame.formattedWord {
      totalWins += 1
    } else {
      updateUI()
    }
  }

  func enableLetterBtns(_ enable: Bool ) {
    for btn in letterButtons {
      btn.isEnabled = enable
    }
  }

}

