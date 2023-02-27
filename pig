import random
import csv
import pandas as pd
import os 
def roll_die():
  return random.randint(1, 6)

def play_pig():
  player_score = 0
  computer_score = 0
  current_player = "player"
  while True:
    if current_player == "player":
      print(f"Your score: {player_score}. Computer score: {computer_score}.")
      choice = input("Enter r to roll, h to hold: ")
      if choice == "r":
        roll = roll_die()
        if roll == 1:
          player_current_score = player_score
          print("You rolled a 1. Your turn is over.")
          current_player = "computer"
        else:
          player_score += roll
          print(f"You rolled a {roll}.")
      elif choice == "h":
        current_player = "computer"
    else:
      print(f"Your score: {player_score}. Computer score: {computer_score}.")
      computer_choice = "h" if computer_score + roll_die() >= 50 else "r"
      if computer_choice == "r":
        roll = roll_die()
        if roll == 1:
          computer_current_score = computer_score
          print("The computer rolled a 1. Its turn is over.")
          current_player = "player"
        else:
          computer_score += roll
          print(f"The computer rolled a {roll}.")
      elif computer_choice == "h":
        current_player = "player"
  
    if player_score >= 50:
        print("The player wins.")
        data = ("player wins")
    if not os.path.exists("Winnings.csv"):
        f1 = open("Winnings.csv", mode='w', newline="")
        write = csv.reader(f1)
        write.writerow(data)
    break

    if computer_score >= 50:
        print("The computer wins.")
        data = ("computer wins")
    if not os.path.exists("Winnings.csv"):
        f1 = open("Winnings.csv", mode='w', newline="")
        write = csv.reader(f1)
        write.writerow(data)
    break

play_pig()
