//
//  Game.swift
//  ApplePie
//
//  Created by Mark Chouinard on 10/28/21.
//

import Foundation

struct Game {
  var word: String
  var incorrectMovesRemaining: Int
  var guessedLetters: [Character]
  var formattedWord: String {
    var guessedWord = ""
    for letter in word {
      if guessedLetters.contains(letter) {
        guessedWord += "\(letter)"
      } else {
        guessedWord += "_"
      }
    }
    return guessedWord
  }

  mutating func guess(letter: Character) {
    guessedLetters.append(letter)
    if !word.contains(letter) {
      incorrectMovesRemaining -= 1
    }
  }
}
