# Battleships

Battleships is a game where each player has two 10x10 boards. Each player places ships on one of their boards. They then take it in turns to guess where their opponent's ships are by choosing one square on their oponents board (shooting). 

The player keeps a record of their shots, noting when a ship has been hit. A ship is sunk when all squares covered by the ship are hit.


###Class - Board

Responsibilites             | Collaborators
----------------------------|------------------
ships_placed_on_board       | User, Ships
record (hit or miss)        | User
take_turn                   | User
shoot                       | User


### Class - User
Responsibilites       | Collaborators
----------------------|------------------------
 ships_placed         |  Ships, Board
 take_turn            |  Board
 Shoot                |  Board
 Record (hit or miss) |  Board


### Class - Ships
Responisibilites        |Collaborators
------------------------|------------------
ships_placed            |  Board
be_sunk                 |
