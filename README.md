# 🎮 Tic-Tac-Toe

A simple command-line Tic-Tac-Toe game written in **Ruby**.

This project was built to practice **Ruby OOP, classes, methods, arrays, loops, and game logic**.

## Features

* 2-player Tic-Tac-Toe
* 3×3 game board
* Players take turns using `X` and `Y`
* Checks for:

  * Row wins
  * Column wins
  * Diagonal wins
  * Tie
* Prevents players from choosing an occupied position
* Validates moves from `1-9`

## How to Run

Make sure Ruby is installed.

```bash
ruby tic_tac_toe.rb
```

Then enter a number from `1-9` when prompted.

## Board Positions

```text
1  |  2  |  3
=============
4  |  5  |  6
=============
7  |  8  |  9
```

For example, entering `5` places your mark in the center.

## Project Structure

The game is divided into three classes:

### `Player`

Handles player input and stores the selected move.

### `Board`

Handles:

* Board creation
* Printing the board
* Move validation
* Making moves
* Win detection
* Tie detection

### `Game`

Controls the overall game flow and player turns.

## What I Practiced

* Ruby classes and objects
* `attr_accessor`
* Instance variables
* 2D arrays
* Blocks and `all?`
* Loops
* Conditional statements
* Input validation
* Separating game logic into classes

## Future Improvements

* Add a computer opponent
* Allow players to choose `X` or `Y`
* Improve the command-line interface
* Add a replay option
