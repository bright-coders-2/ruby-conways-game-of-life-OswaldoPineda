# Ruby Conway's game of life
## The Game
The Game of Life is not your typical computer game. It is a 'cellular automaton', and was invented by Cambridge mathematician John Conway.

This game became widely known when it was mentioned in an article published by Scientific American in 1970. It consists of a collection of cells which, based on a few mathematical rules, can live, die or multiply. Depending on the initial conditions, the cells form various patterns throughout the course of the game.

## Requirement
- You must implement the game of life using ruby


# Ruby Conway's game of life

## The Game
The Game of Life is not your typical computer game. It is a 'cellular automaton', and was invented by Cambridge mathematician John Conway.

This game became widely known when it was mentioned in an article published by Scientific American in 1970. It consists of a collection of cells which, based on a few mathematical rules, can live, die or multiply. Depending on the initial conditions, the cells form various patterns throughout the course of the game.

## Rules
- Any live cell with fewer than two live neighbours dies, as if by underpopulation.
- Any live cell with two or three live neighbours lives on to the next generation.
- Any live cell with more than three live neighbours dies, as if by overpopulation.
- Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

# How to play

## Instalation

Execute the next command for install it:

    $ bundle exec rake install
    
This create a folder called pkg where will our .gem file be found.

Can you execute:

    $ gem list --local

for check the successful installation.

Finally, we only require the gem with the next line:
```ruby
require "conway" 
```

or start with irb.

## Usage
To use this gem you must first create an instance of the Game class:

Example of instance:
```ruby
game = Conway::Game.new
```

Once the instance is done, you must access the start method of this class.
Example of start method:
```ruby
game.start
```

When you use the method you will see the animation of game in the console.
### NOTE: scroll to the top in termial to see better the animation. 

Enjoy it! :)
